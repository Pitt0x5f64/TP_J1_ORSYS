FROM tomcat:10-jdk17
ADD target/MyWebApp.war /usr/local/tomcat/webapps/MyWebApp.war
EXPOSE 8181
CMD ["catalina.sh", "run"]