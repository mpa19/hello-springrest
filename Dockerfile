FROM gradle
WORKDIR ./opt/springrest-grandle
COPY build/libs/restservice-0.0.1-SNAPSHOT.jar  ./
CMD java -jar restservice-0.0.1-SNAPSHOT.jar 