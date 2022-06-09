### Ejecutar con gradle:
```bash
./gradlew bootRun
```

### Creacion y ejecucion con docker:
```bash
docker build -t springrest:latest .
```
```bash
docker -it --rm -p 8080:8080 springrest:latest
```

### Creacion y ejecucion con docker-compose:
```bash
docker-compose build
```
```bash
docker-compose up
```