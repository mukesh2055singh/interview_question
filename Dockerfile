# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-slim
# Set the working directory to /app
WORKDIR /app

# Copy the jar file from the target directory to the working directory
COPY target/*.jar /app/my-spring-boot-app.jar

# Expose port 8080
EXPOSE 9000

# Set the entry point to run the Spring Boot application

ENTRYPOINT ["java", "-jar", "my-spring-boot-app.jar"]