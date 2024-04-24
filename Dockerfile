
FROM openjdk:17-jdk-alpine AS builder

WORKDIR /usr/local/tomcat/webapps

COPY target/DimMoneyAppRm89162-0.0.1-SNAPSHOT.jar dimmoneyrm89162.jar

FROM openjdk:17-jdk-alpine

WORKDIR /usr/local/tomcat/webapps

COPY --from=builder /usr/local/tomcat/webapps/dimmoneyrm89162.jar app.jar

VOLUME /usr/local/tomcat/webapps/deploys-tomcat10

RUN mkdir -p /usr/local/tomcat/webapps/deploys-tomcat10 && cp app.jar /usr/local/tomcat/webapps/deploys-tomcat10/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
