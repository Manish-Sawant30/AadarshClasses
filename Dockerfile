# Use OpenJDK image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src src

# Package the app
RUN ./mvnw clean package -DskipTests

# Run the Spring Boot app (adjust JAR name if different)
CMD ["java", "-jar", "target/aadarshproject-0.0.1-SNAPSHOT.jar"]
