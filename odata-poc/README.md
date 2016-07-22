# OData-POC 
To run application:

    $ mvn -f poc-ws/pom.xml spring-boot:run -Drun.jvmArguments='-Djava.rmi.server.hostname=localhost -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 -noverify'

## Querying data

OData-context can be read using URL: http://localhost:8080/odata-poc.svc
Available contexts:
    - http://localhost:8080/odata-poc.svc/SA_Aipals
    - http://localhost:8080/odata-poc.svc/F_Maaras

### Filtering examples
    - http://localhost:8080/odata-poc.svc/SA_Aipals(3272159)
    - http://localhost:8080/odata-poc.svc/SA_Aipals?$filter=kyselyid+eq+3330198
    - http://localhost:8080/odata-poc.svc/SA_Aipals?$filter=valmistavan_koulutuksen_oppilaitos_fi+eq+%27Edupoli%27&$top=3

### Notes
By default OData is provided in XML-format, but you can request it in json format by using: $format=json