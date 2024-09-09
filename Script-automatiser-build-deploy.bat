

@echo on

SET mypath=%~dp0
SET userprofil=%systemdrive%%homepath%
SET tomcatpath=C:\Data\CI\TOMCAT\apache-tomcat-9.0.35\bin


cd C:\Data\CI\MAVEN\TPs\TP3\
call mvn scm:checkout    -DconnectionUrl=scm:git:https://github.com/heiwanasenshi/tp   -DcheckoutDirectory=C:\Data\CI\MAVEN\TPs\TP5

pause
cd C:\Data\CI\MAVEN\TPs\TP5\monappli

pause
call mvn clean package

pause
SET src=C:\Data\CI\MAVEN\TPs\TP5\monappli\monappli-web\target\monappli-web.war
SET dest=C:\Data\CI\TOMCAT\apache-tomcat-9.0.35\webapps

@echo on
copy %src% %dest%

call %tomcatpath%\startup.sh

pause
start chrome http://localhost:8080/monappli-web
