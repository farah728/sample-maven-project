
FROM docker.io/openjdk:8-jdk-alpine
EXPOSE 9090
ADD target/cravejava-app-1.0.jar farah728/cravejava-app-1.0.jar
ENTRYPOINT ["java","-jar","/farah728/cravejava-app-1.0.jar"]
