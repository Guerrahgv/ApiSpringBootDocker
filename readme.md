# Api DevOps SpringBoot Y MySQL

En este ejercicio, exploraremos una API utilizando Spring Boot y MySQL, todo ello dockerizado con Docker. Simplificando el proceso de despliegue.

Rest Full Api para crear usuarios y modelos. 
 
* Obtener todos los usuarios ( Get All the user    )
* Crear un nuevo usuario     ( Post a new user     )
* Actualizar usuario         ( Update users [id]   )
* Eliminar usuario           ( Delete a user by id )
* Buscar Usuario             (Find user by id and prioridad)

### Pre-requisitos   
Asegurarse de tener

* Git
* Visual Studio
* Java 11+ y Maven
* Docker

# Empecemos

### Clona el repositorio
        https://github.com/Guerrahgv/ApiSpringBootDocker


## Ejecutalo de forma local

### Agregar la configuración de la base en applications.properties 

*Ingresa a esta ruta para cambiar las propiedades:* 

    /src/main/resources/application.properties


*Actualiza las siguientes propiedades:*

* Url
* Username 
* Password
* Port

**Codigo de properties para ejecutarlo de forma local (cambiar por tus credenciales):**

    spring.datasource.url=jdbc:mysql://localhost:3306/apiusuario
    spring.datasource.username=root
    spring.datasource.password=
    spring.jpa.properties.hibernate.show_sql=true
    spring.jpa.hibernate.ddl-auto=update
    server.port=8090



Asegurate que tomo marcha bien, **ejecutalo de forma local con mvn**:

**Windows example:**

    mvnw.cmd spring-boot:run

**Unix based:**

    mvwn spring-boot:run 

Ingresa a esta ruta local o la que se definio en las propiedades (por defecto)

    localhost:8090/usuario


# Con Docker 

### Pre-requisitos   

Empecemos compilando el proyecto de Spring Boot para generar el Jar.  Este comando compilara el proyecto y generara un archivo JAR en el directorio target del proyecto.

**utilizando Maven, puedes ejecutar el siguiente comando en la raíz de tu proyecto:**

    mvn clean package

*Evitar los test:*

    ./mvnw clean package -DskipTests

**Esto creara el Jar en este directorio:**

    apiRestSpringBootUsuarios\target\apiusuarios.jar

### Creando Dockerfile

Ahora que todo ha Marchado bien empecemos con docker: 

En el directorio raiz encontraras un archivo llamado Dockerfile este lo podras configurar segun tus necesidades

    apiRestSpringBootUsuarios\Dockerfile

con el siguiente codigo explicado linea a linea: 

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
