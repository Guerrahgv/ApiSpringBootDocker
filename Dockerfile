# Usa una imagen base de Java
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de la aplicación al contenedor
COPY target/apiusuarios.jar /app/app.jar

# Expone el puerto en el que se ejecuta la aplicación
EXPOSE 8090

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD ["java", "-jar", "app.jar", "java-app.jar"]
