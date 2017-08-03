
DROP PROCEDURE IF EXISTS [dw].[p_lataa_f_yo_julkaisut_a_e]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dw].[p_lataa_f_yo_julkaisut_a_e]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dw].[p_lataa_f_yo_julkaisut_a_e] AS' 
END
GO

ALTER PROCEDURE [dw].[p_lataa_f_yo_julkaisut_a_e]
AS
TRUNCATE TABLE dw.f_yo_julkaisut_a_e;

INSERT INTO dw.f_yo_julkaisut_a_e(
	[d_yliopisto_id]
	,[d_koulutusala_id]
	,[d_ohjauksenala_id]
	,d_julkaisutyyppi_id
	,d_julkaisun_kansainvalisyys_id
	,d_tieteenala_id
	,tieteenala_koodi
	,d_julkaisufoorumitaso_id
	,d_kansainvalinen_yhteisjulkaisu_id
	,d_yhteisjulkaisuSHPKytkin_id
	,d_yhteisjulkaisuTutkimuslaitosKytkin_id
	,d_yhteisjulkaisuMuuKytkin_id
	,d_avoinSaatavuus_id	
	,[vuosi]
	,[julkaisujen_maara]
	,[loadtime]
	,[source]
	,[username]
	)
SELECT s2.id
	,COALESCE(s3.id,-1)
	,COALESCE(s4.id,-1)
	,COALESCE(s5.id,-1)
	,COALESCE(s6.id,-1)
	,COALESCE(s7.id,-1)
	,COALESCE(case when vuosi<2011 then case when TIETEENALA_KOODI_07 = 'NNN' then '-1' else TIETEENALA_KOODI_07 end else TIETEENALA_KOODI_10 end,'-1')
	,COALESCE(d3.id,-1)
	,COALESCE(d6.id,-1)
	,COALESCE(d12.id,-1)
	,COALESCE(d13.id,-1)
	,COALESCE(d14.id,-1)
	,COALESCE(d17.id,-1)
	,[Vuosi]
	,COALESCE(s1.JULKAISUJEN_LKM, 0)
	,getdate()
	,'etl: p_lataa_f_yo_julkaisut_a_e'
	,suser_sname()
FROM [sa].[sa_suorat_hist_yo3_julkaisut_a_e] s1
JOIN [dw].[d_yo] s2 ON s1.YLIOPISTO_TUNNUS = s2.yo_tunnus
LEFT JOIN [dw].d_koulutusala_1995 s3 ON CONVERT(VARCHAR, s1.KOULUTUSALAKOODI) = CONVERT(VARCHAR, CASE WHEN s3.koodi = 'NN' THEN '-1' ELSE s3.koodi END)
	AND s1.Vuosi < 2016
LEFT JOIN [dw].d_ohjauksenala s4 ON s1.KOULUTUSALAKOODI = s4.ohjauksenala_koodi
	AND s1.Vuosi >= 2016
JOIN [dw].d_julkaisutyyppi s5 ON SUBSTRING(s1.JULKAISUTYYPPI_KOODI,1,2) = s5.julkaisutyyppi_koodi 
LEFT JOIN [dw].d_julkaisun_kansainvalisyys s6 ON s1.KANSAINVALISYYS_KOODI = s6.julkaisun_kansainvalisyys_koodi
LEFT JOIN [dw].d_tieteenala s7 ON s1.TIETEENALA_KOODI_07 = s7.tieteenala_koodi
LEFT JOIN dw.d_julkaisufoorumitaso d3 ON d3.julkaisufoorumitaso_koodi = coalesce(s1.JUFO_KOODI,'-')
LEFT JOIN dw.d_kansainvalinen_yhteisjulkaisu d6 ON d6.kansainvalinen_yhteisjulkaisu_koodi = s1.KV_YHTEISJULKAISU_KOODI
LEFT JOIN dw.d_kytkin d12 on d12.kytkin_koodi = nullif(YLIOPISTOLLINEN_SAIRAANHOITOPIIRI_YHTEISJULKAISU_KOODI,'')
LEFT JOIN dw.d_kytkin d13 on d13.kytkin_koodi = nullif(VALTION_SEKTORITUTKIMUSLAITOS_YHTEISJULKAISU_KOODI,'')
LEFT JOIN dw.d_kytkin d14 on d14.kytkin_koodi = nullif(MUU_KOTIMAINEN_TUTKIMUSORGANISAATIO_YHTEISJULKAISU_KOODI,'')
LEFT JOIN dw.d_avoinsaatavuus d17 on d17.avoinsaatavuus_koodi = s1.OPEN_ACCESS_KOODI