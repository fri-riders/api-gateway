FROM openjdk:8-jre-alpine
EXPOSE 8080
ENV CONFIG_SERVER_URL consul
ENV DISCOVERY_HOSTNAME gateway
ADD target/api-gateway-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]