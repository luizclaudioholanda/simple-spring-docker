FROM openjdk:8-jdk-alpine
MAINTAINER experto.com
VOLUME /tmp
EXPOSE 8080
ADD target/simple-spring-docker-0.0.1-SNAPSHOT.jar simple-spring-docker.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/simple-spring-docker.jar"]