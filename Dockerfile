FROM docker.io/openjdk:8-jdk-alpine
EXPOSE 9090
ADD cravejava-app-1.0.jar cravejava-app-1.0.jar
ENTRYPOINT ["java","-jar","/cravejava-app-1.0.jar"]
