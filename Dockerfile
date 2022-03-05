# syntax=docker/dockerfile:1
FROM openjdk:8
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
EXPOSE 9090
ADD target/cravejava-app-1.0.jar cravejava-app.jar
CMD ["java", "-jar","/cravejava-app.jar"] 
