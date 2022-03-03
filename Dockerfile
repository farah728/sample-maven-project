FROM openjdk:8 EXPOSE 9090 ADD target/cravejava-app-1.0.jar cravejava-app-1.0.jar ENTRYPOINT ["java", "-jar","/cravejava-app-1.0.jar"] 
