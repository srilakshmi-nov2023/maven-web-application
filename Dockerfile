#FROM tomcat:8.0.18-jre8
#COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
FROM maven:3.8.6-openjdk-11 as build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:8.0.18-jre8
COPY --from=build /app/target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
