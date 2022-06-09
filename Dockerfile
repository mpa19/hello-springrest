FROM openjdk:11 AS builder
WORKDIR /spring
COPY . ./
RUN ./gradlew assemble

FROM openjdk:11.0.15-jre-slim-buster AS runtime
WORKDIR ./opt/springrest-grandle
COPY --from=builder /spring/build/libs/restservice-0.0.1-SNAPSHOT.jar  ./
CMD java -jar restservice-0.0.1-SNAPSHOT.jar 
