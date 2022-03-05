# syntax=docker/dockerfile:1
FROM openjdk:8
WORKDIR /maven-project
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
ADD target/cravejava-app-1.0.jar cravejava-app-1.0.jar
ENTRYPOINT ["java", "-jar","/cravejava-app-1.0.jar"]
