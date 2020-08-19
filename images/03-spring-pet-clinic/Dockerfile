FROM maven:3.6.3-ibmjava-8 as build

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src/ src/

RUN mvn package

FROM openjdk:8-jre-alpine3.9

WORKDIR /app

COPY --from=build /app/target/*.jar ./spring-petclinic.jar

EXPOSE 8080

CMD ["java", "-jar", "spring-petclinic.jar"]
