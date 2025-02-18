# Use an OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven-built jar from the target directory to the container
COPY target/*.jar /app/application.jar

# Expose the port your Spring Boot app will run on
EXPOSE 5454

# Run the Spring Boot application
CMD ["java", "-jar", "/app/application.jar"]
