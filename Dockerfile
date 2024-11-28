# Use a base image with Java runtime

FROM openjdk:17-jdk-slim



# Set a working directory inside the container

WORKDIR /app



# Copy the JAR file into the container

# Replace "app.jar" with the name of your packaged JAR file

COPY "target/ExamThourayaS2-0.0.1-SNAPSHOT.jar" "/app/ExamThourayaS2-0.0.1-SNAPSHOT.jar"



# Expose the port your Spring Boot app listens on

EXPOSE 8083



# Command to run the application

ENTRYPOINT ["java", "-jar", "/app/ExamThourayaS2-0.0.1-SNAPSHOT.jar"]

