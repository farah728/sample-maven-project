FROM docker.io/openjdk:8-jdk-alpine
EXPOSE 9090
ADD C:\Users\farah\.jenkins\workspace\test-maven-project\target\cravejava-app-1.0.jar cravejava-app-1.0.jar
ENTRYPOINT ["java","-jar","/cravejava-app-1.0.jar"]
