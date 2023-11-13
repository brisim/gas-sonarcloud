FROM openjdk:21
WORKDIR /my-project
CMD ["./gradlew", "app:clean", "app:bootJar"]
COPY app/build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]