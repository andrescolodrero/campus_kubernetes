# Ejercicio

1. Crear 3 pods (pods.yml) con etiquetas (Labels)
    pod1: 
        - frontend: env=prod, team=A
        - backend: env=prod, team=A
        - database: env=prod, team=database
2. Crear Anotations:
    frontend: commit=12345, costcenter=10
    backend: commit=12345, costcenter=10
    database: costcenter=12

3. Desplegar los pods
4. listar pods de team=A
5. Listar pods del costcenter=12