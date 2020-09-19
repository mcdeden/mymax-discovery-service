FROM openjdk:8-jdk-alpine
MAINTAINER mcdeden <mcdeden@gmail.com>
VOLUME /tmp
EXPOSE 8787
ADD target/*.jar Discovery.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/Discovery.jar"]