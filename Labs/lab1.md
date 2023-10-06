# Ejercicio

1. Montar un Kind con 3 nodos
2. Anotar un Nodo con Taints
3. Anotar dos nodos con disk=ssd
4. Crear un namespace de aplicaciones
5. Desplegar Redis con configuracion:

"
port 6379
repl-diskless-load disabled
rdbchecksum yes
always-show-logo yes

6. Desplegar un nginx deployment en solo nodos con disk=ssd
