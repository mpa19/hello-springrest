Para ejecutar usar:

./gradlew bootRun


Creacion y ejecucion con docker:

docker build -t hello-springrest:latest .
docker -it --rm -p 8080:8080 springrest:latest
