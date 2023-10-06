# Crear un Rollout Deployment con la applicacion

/Labs/Docker/pythonApp_1 (version 1)
/Labs/Docker/pythonApp_1 (version 2)

1. Desplegar Version 1. Crear los componentes necesarios en Kubernetes.

2. Editar version 2 y crear: 
    1.1. Una ruta llamada /health que devuelve "ok" y HTTP Code
    1.2. Modificar una ruta para imprimir "Version 2"

3. Añadir un Probe en el deployment para comprobar que la version 2 funcion (usar ruta (/health)
)
4. Hacer un rollout para desplegar la nueva aplicacion.

5. Crear Version 3 y simular un fallo en /Health
6. Hacer un despliegue de la version 3 y rollback a version 2
