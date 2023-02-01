FROM openjdk:19-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} metalarchives.jar
ENTRYPOINT ["java", "-jar", "metalarchives.jar"]