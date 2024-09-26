# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app


# Copy the JAR file into the container
COPY target/*.jar app.jar

# Expose the port the application runs on
EXPOSE 8081

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
# First stage: build the application
## Use the official Maven image with OpenJDK 21
#FROM eclipse-temurin:21-alpine AS build
#WORKDIR /app
#COPY . .
#RUN ./mvnw clean package
#
## Create a minimal image for the application
#FROM openjdk:21-slim
#COPY --from=build /app/target/my-java-app.jar /app/my-java-app.jar
#ENTRYPOINT ["java", "-jar", "/app/my-java-app.jar"]



