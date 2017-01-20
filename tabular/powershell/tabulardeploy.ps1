﻿Param
(
    [string]$modelfile = "D:\Temp\testi\Model.bim",
    #[string]$logfile = "D:\Temp\deploy.txt",
    [string]$scriptdir = "D:\Temp\tabularscript\",
    [string]$prodtabserver = "dwitviputab16",
    [string]$prodsqlserver = "dwitvipusql16",
    [string]$proddatabase = "ANTERO_DW",
    [string]$exe = "C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn\ManagementStudio\Microsoft.AnalysisServices.Deployment.exe"#,
    #[string]$username = "USERNAME",
    #[string]$password = "PASSWORD"
)

[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.AnalysisServices")
[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.AnalysisServices.AdomdClient") | out-null
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') | Out-Null

if([bool]((Get-Content $modelfile) -as [xml]))
{
    $scriptfile = $scriptdir + "deploy.xmla"
}
else
{
    $scriptfile = $scriptdir + "deploy.json"
}
$arg2 = "/o:""" + $scriptfile + """"
$arg3 = "/d"

try
{
    Start-Process -FilePath $exe -ArgumentList $modelfile, $arg2, $arg3 -Wait -RedirectStandardOutput d:\temp\stdout.txt -RedirectStandardError d:\temp\stderr.txt
    $stdout = import-csv d:\temp\stdout.txt
    $stdout
    $stderr = import-csv d:\temp\stderr.txt
    $stderr

    if([bool]((Get-Content $modelfile) -as [xml]))
    {
        $xml = [xml]((Get-Content $scriptfile -Encoding Unicode))
        Write-Host "Deploying model:" $xml.Alter.ObjectDefinition.Database.Name

        $node = $xml.Alter.ObjectDefinition.Database.DataSources.ChildNodes
        foreach($datasource in $node)
        {
            $datasource.ImpersonationInfo.RemoveChild('Account')
            $datasource.ConnectionString = "Provider=SQLNCLI11;Data Source=" + $prodsqlserver + ";Persist Security Info=false;Integrated Security=SSPI;Initial Catalog=" + $proddatabase
        }

        $serverName = “Data Source=” + $prodtabserver
        $serverAS = New-Object Microsoft.AnalysisServices.AdomdClient.AdomdConnection $serverName
        $serverAS.open()

        $query = $xml.OuterXml
        $cmd = New-Object Microsoft.AnalysisServices.AdomdClient.AdomdCommand $query, $serverAS
        $cmd.ExecuteNonQuery()
    }
    else
    {
        $a = Get-Content $scriptfile | Out-String | ConvertFrom-Json
        $b = $a.createOrReplace
        $c = $b.database
        $d = $c.model
        $e = $d.dataSources

        Write-Host "Deploying model:" $c.name

        foreach($f in $e)
        {
            $f.PSObject.Properties.Remove('Account')
            $f.connectionString = "Provider=SQLNCLI11;Data Source=" + $prodsqlserver + ";Initial Catalog=" + $proddatabase + ";Integrated Security=SSPI;Persist Security Info=false"
        }

        #$s2 = $a | ConvertTo-Json -Depth 64
        #$s2 |out-file -filepath ($scriptfile + ((get-date).ToString("_yyyyMMdd_HHmmss")))

        $serverName = "Data Source=" + $prodtabserver
        $serverAS = New-Object Microsoft.AnalysisServices.AdomdClient.AdomdConnection $serverName
        $serverAS.open()

        $query = $a | ConvertTo-Json -Depth 64
        $cmd = New-Object Microsoft.AnalysisServices.AdomdClient.AdomdCommand $query, $serverAS
        $cmd.ExecuteNonQuery()
    }
}
catch
{
    $error[0]
}