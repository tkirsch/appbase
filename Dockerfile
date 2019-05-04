FROM maven:3.5-jdk-8 as build
WORKDIR /usr/src/app
COPY pom.xml .
RUN mvn clean install
COPY . .
RUN mvn -o clean install

FROM openjdk:8-jre-alpine as app
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/target/app.jar .
CMD java -cp app.jar org.example.app.Main