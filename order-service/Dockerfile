# Use Java 17 runtime
FROM eclipse-temurin:17-jre
WORKDIR /app

# Copy the built JAR into the image
COPY target/*.jar app.jar

# Expose the port your app listens on
EXPOSE 3000

# Start the Java application
ENTRYPOINT ["java", "-jar", "app.jar"]
