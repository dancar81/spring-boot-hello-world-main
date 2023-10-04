FROM adoptopenjdk/openjdk11:alpine-jre

ARG JAR_FILE=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${JAR_FILE} hello-world-1.0.jar

ENTRYPOINT ["java","-jar","hello-world-1.0.jar"]

 EXPOSE 8081
