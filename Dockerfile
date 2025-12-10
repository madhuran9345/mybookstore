FROM docker.io/library/openjdk:17
WORKDIR /app
COPY target/onlinebookstore.war /app/onlinebookstore.war
COPY target/dependency/webapp-runner.jar /app/webapp-runner.jar
EXPOSE 8080
CMD ["java", "-jar", "webapp-runner.jar", "onlinebookstore.war"]
