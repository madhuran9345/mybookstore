## Use a valid OpenJDK 17 image
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy WAR and webapp-runner
COPY target/onlinebookstore.war /app/onlinebookstore.war
COPY target/dependency/webapp-runner.jar /app/webapp-runner.jar

EXPOSE 8080

# Run the app
CMD ["java", "-jar", "webapp-runner.jar", "onlinebookstore.war"]
