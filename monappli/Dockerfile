FROM tomcat:10-jdk17
ADD monappli/monappli-web/target/monappli-web.war /usr/local/tomcat/webapps/monappli-web.war
EXPOSE 8181
CMD ["catalina.sh", "run"]