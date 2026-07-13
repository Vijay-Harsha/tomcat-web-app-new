FROM tomcat:10.1-jdk21-temurin

LABEL maintainer="Vijayanusaya Thakur <vijayanusaya.com>"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/tomcat-web-app-new.war /usr/local/tomcat/webapps/tomcat-web-app-new.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
