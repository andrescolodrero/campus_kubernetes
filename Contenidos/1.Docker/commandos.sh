# Imágenes (Images):

# Listar imágenes locales
docker images

# Descargar una imagen desde Docker Hub
docker pull nombre-imagen:etiqueta

# Eliminar una imagen local
docker rmi nombre-imagen:etiqueta

# Crear una imagen a partir de un Dockerfile
docker build -t nombre-imagen:etiqueta /ruta/a/Dockerfile

# Contenedores (Containers):

# Listar contenedores en ejecución
docker ps

# Listar todos los contenedores (incluyendo los detenidos)
docker ps -a

# Ejecutar un contenedor
docker run -d --name nombre-contenedor nombre-imagen:etiqueta

# Detener un contenedor
docker stop nombre-contenedor

# Iniciar un contenedor detenido
docker start nombre-contenedor

# Eliminar un contenedor
docker rm nombre-contenedor

# Red (Network):

# Listar redes disponibles
docker network ls

# Crear una red personalizada
docker network create nombre-red

# Conectar un contenedor a una red
docker network connect nombre-red nombre-contenedor

# Almacenamiento (Storage):

# Listar volúmenes
docker volume ls

# Crear un volumen
docker volume create nombre-volumen

# Eliminar un volumen
docker volume rm nombre-volumen
