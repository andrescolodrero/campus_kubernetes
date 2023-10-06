## Introducción a contenedores
docker run busybox

docker ls -a

docker run --rm busybox 

docker run -d --name myngix nginx

# Network
docker run -d --expose 3000 nginx
docker rm # eliminar

docker run -d  -p 8080:80 nginx # host:contenedor
docker run -d --expose 3000 -p 8081:80/tcp -p 8081:80/udp nginx # host:contaner

docker port

# Imagenes
docker image history
docker image save


# NOta: ../Documentacion/Docker cheat sheet