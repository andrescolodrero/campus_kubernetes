# Kubernetes

ALgunos comandos:
# Ver config View
kubectl config view # 
# Cambiar de Namespace
kubectl config set-context --current --namespace=<nombre-namespace>

# Trabajar con Pods
kubectl get pods -o yaml // -o json
kubectl get pods -o wide
kubectl get pods  --all-namespaces

kubectl get pods -o jsonpath='{.items[*].metadata.name}'
kubectl delete pod

kubectl describe pod <nombre>

kubectl exec -it <pod name>  -- <comando>
# Aplicar un yml
kubectl apply -f ficher.yml

# Borar un manifesto
kubectl delete -f ficher.yml

## Ver logs
kubectl logs

## Ejercicios

1. Examinar commandos de kubectl  y context
2. Desplegar un pod
3. acceder con kubectl exec -it ..... /bin/bash

kubectl exec -it two-containers -c debian-container -- /bin/sh
kubectl exec -it two-containers -c nginx-container -- /bin/sh