# Kubernetes

ALgunos comandos:
# Ver config View
kubectl config view # 
# Cambiar de Namespace
kubectl config set-context --current --namespace=<nombre-namespace>

# Trabajar con Pods
kubectl get pods -o yaml // -o json
kubectl get pods -o wide

kubectl get pods -o jsonpath='{.items[*].metadata.name}'
kubectl delete pod
## Ver logs
kubectl logs

## Ejercicios

1. Examinar commandos de kubectl  y context
2. Desplegar un pod
3. acceder con kubectl exec -it ..... /bin/bash

kubectl exec -it two-containers -c debian-container -- /bin/sh
