# Stage 1: Build the application with Java 21
FROM ubuntu:latest AS build

RUN apt-get update
RUN apt-get install openjdk-21-jdk -y

WORKDIR /build
COPY . .

RUN ./mvnw clean package -DskipTests

# Stage 2: Use a smaller base image for runtime
FROM openjdk:21-jdk-slim

EXPOSE 8080

COPY --from=build /build/target/api-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
