FROM maven as build
WORKDIR /app
COPY . .
RUN mvn install

FROM openjdk:11.0
WORKDIR /app
COPY --force=build /app/target/my-application.jar/app/
EXPOSE 8080
CMD["java","-jar","my-application.jar"]