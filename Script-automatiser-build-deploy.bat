

@echo on

SET mypath=%~dp0
SET userprofil=%systemdrive%%homepath%
SET tomcatpath=C:\Users\orsys\Formation\Outils\tomcat\apache-tomcat-10.1.28\bin


cd C:\Users\orsys\Formation\TP_J1_ORSYS
call mvn scm:checkout    -DconnectionUrl=scm:git:https://github.com/Pitt0x5f64/TP_J1_ORSYS   -DcheckoutDirectory=C:\Users\orsys\Formation\TP_J1

pause
cd C:\Users\orsys\Formation\TP_J1_ORSYS\monappli

pause
call mvn clean package

pause
SET src=C:\Users\orsys\Formation\TP_J1_ORSYS\monappli\monappli-web\target\monappli-web.war
SET dest=C:\Users\orsys\Formation\Outils\tomcat\apache-tomcat-10.1.28\webapps

@echo on
copy %src% %dest%

call %tomcatpath%\startup.sh

pause
start chrome http://localhost:8080/monappli-web
