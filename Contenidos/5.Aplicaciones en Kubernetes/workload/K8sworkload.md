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


## Replica Sets

# Crear un ReplicaSet
kubectl create replicaset <nombre-replicaset> --image=<imagen>

# Ver los ReplicaSets
kubectl get replicaset

# Ver detalles de un ReplicaSet
kubectl describe replicaset <nombre-replicaset>

# Escalar un ReplicaSet
kubectl scale replicaset <nombre-replicaset> --replicas=<número-replicas>

# Actualizar una imagen en un ReplicaSet
kubectl set image replicaset/<nombre-replicaset> <nombre-contenedor>=<nueva-imagen>

# Ver los Pods gestionados por un ReplicaSet
kubectl get pods -l app=<nombre-replicaset>

# Eliminar un ReplicaSet
kubectl delete replicaset <nombre-replicaset>

# Forzar una actualización del ReplicaSet (recrea Pods)
kubectl rollout restart replicaset/<nombre-replicaset>


## Stateful sets
# Crear un StatefulSet
kubectl create statefulset <nombre-statefulset> --image=<imagen> --replicas=<número-replicas>

# Ver los StatefulSets
kubectl get statefulset

# Ver detalles de un StatefulSet
kubectl describe statefulset <nombre-statefulset>

# Escalar un StatefulSet
kubectl scale statefulset <nombre-statefulset> --replicas=<nuevo-número-replicas>

# Actualizar una imagen en un StatefulSet
kubectl set image statefulset/<nombre-statefulset> <nombre-contenedor>=<nueva-imagen>

# Ver los Pods gestionados por un StatefulSet
kubectl get pods -l app=<nombre-statefulset>

# Ejecutar un comando en un Pod específico del StatefulSet
kubectl exec <nombre-statefulset>-0 -- comando-a-ejecutar

# Eliminar un StatefulSet (y sus Pods)
kubectl delete statefulset <nombre-statefulset>


## Daemon Sets
# Crear un DaemonSet
kubectl create daemonset <nombre-daemonset> --image=<imagen>

# Ver los DaemonSets
kubectl get daemonset

# Ver detalles de un DaemonSet
kubectl describe daemonset <nombre-daemonset>

# Actualizar una imagen en un DaemonSet
kubectl set image daemonset/<nombre-daemonset> <nombre-contenedor>=<nueva-imagen>

# Ver los Pods gestionados por un DaemonSet
kubectl get pods -l app=<nombre-daemonset>

# Eliminar un DaemonSet (y sus Pods)
kubectl delete daemonset <nombre-daemonset>
