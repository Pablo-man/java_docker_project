# Usar una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

COPY . .

RUN ./mvnw clean package

COPY /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto en el que la aplicación se ejecuta
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
