## COnfig Maps:

### 1.  Crear Config map desde command line
$ kubectl create configmap my-config \
  --from-literal=key1=value1 \
  --from-literal=key2=value2

  $ kubectl get configmaps my-config -o yaml

  $ kubectl create -f customer1-configmap.yaml

### 2. Crear config file desde fichero
$ kubectl create configmap permission-config \
  --from-file=<path/to/>configmap-fromfile.txt

### Create Secret from  command line
kubectl create secret generic test-secret --from-literal='username=my-app' --from-literal='password=39528$vdg7Jb'


## 3. Gestionar Kubernetes Labels
# Agregar una etiqueta a un recurso
kubectl label <tipo_de_recurso> <nombre_del_recurso> <clave>=<valor>

# Ver las etiquetas de un recurso
kubectl get <tipo_de_recurso> <nombre_del_recurso> -o=jsonpath='{.metadata.labels}'

# Editar una etiqueta existente
kubectl label <tipo_de_recurso> <nombre_del_recurso> <clave>=<nuevo_valor> --overwrite

# Eliminar una etiqueta
kubectl label <tipo_de_recurso> <nombre_del_recurso> <clave>-


## 4. Gestionar Kubernetes Annotations
kubectl annotate pod mi-pod mi-anotacion-1=valor-1 
#kubectl get pod mi-pod -o json | jq '.metadata.annotations'  -> solo en LINUX
kubectl annotate pod mi-pod mi-anotacion-1=nuevo_valor --overwrite 
kubectl annotate pod mi-pod mi-anotacion-1- && 
kubectl get pod mi-pod  -o=jsonpath='{.metadata.annotations}'

# LIstar contenedores de entorno=dev

kubectl get pods -l "team in (A,database)"