# Kubernetes workloads. Comandos

kubectl create namespace 

## Deployments
# Crear un Deployment
kubectl create deployment <nombre-deployment> --image=<imagen>

# Ver los Deployments
kubectl get deployments

### Ver detalles de un Deployment
kubectl describe deployment <nombre-deployment>

### Escalar un Deployment
kubectl scale deployment <nombre-deployment> --replicas=<número-replicas>

### Actualizar una imagen en un Deployment
kubectl set image deployment/<nombre-deployment> <nombre-contenedor>=<nueva-imagen>

### Desplegar una nueva versión (Rolling Update)
kubectl rollout restart deployment/<nombre-deployment>

### Ver el estado del rollout
kubectl rollout status deployment/<nombre-deployment>

### Pausar/Reanudar un rollout
kubectl rollout pause deployment/<nombre-deployment>
kubectl rollout resume deployment/<nombre-deployment>

### Historial de revisiones
kubectl rollout history deployment/<nombre-deployment>

### Retroceder a una revisión anterior
kubectl rollout undo deployment/<nombre-deployment> --to-revision=<número-revisión>

### Eliminar un Deployment
kubectl delete deployment <nombre-deployment>

