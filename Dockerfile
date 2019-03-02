FROM openjdk:8-jdk-slim
ENV PORT 8080
EXPOSE 8080
COPY build/libs/*.war /opt/app.war
WORKDIR /opt
CMD ["java", "-jar", "app.war"]