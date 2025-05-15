# Contenedor: entorno AISLADO, donde existen todas las dependencias necesarias para ejecutar un programa.

# Que es una imagen? una serie de instrucciones para crear un contenedor.
# Imagen -> Class Persona
# Contenedor -> Objeto Persona
# Las imagenes viven en un repositorio de imagenes (Container Registry). Docker Hub es el repositorio por defecto.
docker container run hello-world

# Lista de contenedores
docker container ls -a

# Crear un contenedor que persista en el tiempo y que exponga un puerto
docker container run -d -p 8081:80 docker/getting-started

# Eliminar un contenedor
docker container rm <container_id>

# Detener un contenedor
docker container stop <container_id> o el nombre del contenedor

# Iniciar un contenedor ya existente
docker container start <container_id> o el nombre del contenedor

# Eliminar contenedor forzado
docker container rm -fv <container_id> o el nombre del contenedor

# Corren un comando para mantenerse prendidos
docker container run --name MaquinaVirtualUbuntu -d ubuntu sleep 3600

# Como ingresar a un contenedor
docker container exec -it <container_id> <Comando de shell>

# NGINX??? 
docker container run -d -p 8088:80 nginx

# Como construir una imagen 
docker build -t node-api:1.0 .

docker container run --name MyApi -d -p 3001:3000 node-api:1.0

#MySQL
docker container run --name Mysql -e MYSQL_ROOT_PASSWORD=1234 -d -p 3307:3306 mysql:8

#Logs
docker container logs <container_id> o el nombre del contenedor|

# Volumes
docker volume ls

docker logs <ID>

#Volumes Bind Volumes / Volumenes Administrados
docker volume ls

#Crear volumen
docker volume create

# Networks
docker network create <Nombre de Network>

docker network connect <nombre de network> <nombre de contenedor>

#Conectar a la box
docker exec -it box1 sh

# Login
docker login -u kuripipeer -p <password>

# 1. Se crea aplicacion
# 2. Se crea el Dcokerfile
# 3. Construir la imagen
docker build -t kuripipeer/docker-fundamentals:v1 .
# 4. Publicar la imagen
docker push kuripipeer/docker-fundamentals:v1