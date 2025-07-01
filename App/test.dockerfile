#test.dockerfile
FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM openjdk:24-rc-oracle
MAINTAINER giorgos
WORKDIR /app
COPY --from=builder  /build/target/demo-0.0.1-SNAPSHOT.jar ./application.jar
EXPOSE 8080
CMD ["java","-jar","application.jar"]