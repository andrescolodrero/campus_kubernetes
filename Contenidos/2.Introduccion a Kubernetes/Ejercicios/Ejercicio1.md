# Ejercicio 1

1. Crear namespace = lab
2. Cambiar el contexto al nuevo lab
3. Desplegar un pod con la imagen "httpd" (buscar en docker HUb) en namespace "lab". Mirar documentacion de puertos.
4. Acceder al Contenedor y comprar que funciona (curl localhost)
5. Exit del contenedor
6. DEscribir el contenedor y buscar su IP


# Ejercicio 2
1. Crear namespace lab2
2. Cambiar contexto
3. desplegar un pod de nginx y Mirar documentacion de puertos.
4. acceder al contenedor
5. Probar si funciona internamente (kubectl exec ) y probar "curl localhost"
6. Probar si podemos conectarnos del pod de nginx al pod httpd

# ejercicio 3
1. Listar todos los pods activos
2. Eliminar nginx y httpd
3. borrar los namespaces y cambiar el contexto a namespace default.
