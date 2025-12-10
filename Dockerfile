FROM openjdk:17-slim

WORKDIR /app

# Copy WAR and webapp-runner
COPY target/onlinebookstore.war /app/onlinebookstore.war
COPY target/dependency/webapp-runner.jar /app/webapp-runner.jar

EXPOSE 8080

# Run the app with webapp-runner
CMD ["java", "-jar", "webapp-runner.jar", "onlinebookstore.war"]
