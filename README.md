# Beispielapplikation f&uuml;r ein REST-Projekt mit Jersey, Jetty and Gradle

### Voraussetzungen
- [JDK 1.8]
- [Eclipse Neon]

### Starten der Anwendung

 - Download/clone.
 - Im Eclipse: Import as Gradle Project
 - DB Setup -> siehe unten
 - bei den Gradle-Tasks gretty -> appRun/appStart aufrufen
 - im Browser dann 
    - http://localhost:8080/corebanking/corebanking/banks/list Liste aller Banken
    Beispieloutput: [{"id":1,"bankNumber":3321,"description":"Demo","serverAdress":"localhost"}]
 - für ein create: curl -H "Content-Type: application/json" -X PUT -d '{"bankNumber":3321,"description":"Demo","serverAdress":"localhost"}' http://localhost:8080/corebanking/corebanking/banks/create
 - Zum Debuggen appRunDebug wählen und einen Remotedebugger auf Port 5005 starten

### Gradle Tasks f&uuml;r den DB-Setup
 - derbyStart: Startet derby
 - derbyCreateDb: legt die Datenbank an die wir benutzen, muss nur einmal aufgerufen werden
 - flywayMigrate: legt die Datenbanktabellen an, muss nur einmal aufgerufen werden

### Tests
Die Tests sind separiert in Unittest und Integrationstests. Die normalen Unittests sind im Verzeichnis test, die Integrationstests
im Verzeichnis itest. Zum Ausführen der Integrationstests gibt es den Gradle Taske verification->itest.
Es gibt außerdem dependency configurations Namens iTestCompile und iTestRuntime für Integrationstestspezifische Abhängigkeiten.

### Erweiterungsm&ouml;glichkeiten:
 - REST-Api mit Swagger beschreiben
 - Weitere Zugriffsmethode (Delete, Update, Get by Id, ...)
 - Jetty Plugin ersetzen durch gretty
 . Gradle nimmt zu bauen die Java-Version mit der Eclipse gestartet wurde. Das finde ich suboptimal
 - Andere DB-Zufgriffsmögichkeiten demonstrieren (Named Querys, JPQL, ...)
 - ....
 
### Postman
* Postman Chrome Plugin installieren
* Collection aus Ordner postman/ importieren
* Vorhandene Request zum Testen der Api verwenden

### Integration
 * [AWS Installnotes](config/AwsInstallNotest.md)
 * Jenkins: http://ec2-52-59-213-218.eu-central-1.compute.amazonaws.com:8080/
 * Tomcat: http://ec2-52-59-213-218.eu-central-1.compute.amazonaws.com:8090/
 * Anwendung: http://ec2-52-59-213-218.eu-central-1.compute.amazonaws.com:8090/corebanking/corebanking/banks/listWithDs
 