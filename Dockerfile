FROM adoptopenjdk/openjdk11:alpine-jre

ARG JAR_FILE=target/hello-world-1.0.jar

WORKDIR /opt/app

COPY ${JAR_FILE} hello-world.jar

ENTRYPOINT ["java","-jar","hello-world.jar"]

EXPOSE 8081
