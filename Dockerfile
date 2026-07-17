FROM eclipse-temurin:25-jdk

COPY target/rate-limiter-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]