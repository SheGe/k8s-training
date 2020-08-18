FROM maven:3.6.1-jdk-8-alpine as target

WORKDIR /build

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src/ /build/src/

RUN mvn package

FROM openjdk:8-jre-alpine3.9

WORKDIR /app

COPY --from=target \
    /build/target/spring-petclinic-*.jar \
    spring-petclinic.jar

EXPOSE 8080

CMD ["java", "-jar", "spring-petclinic.jar"]
