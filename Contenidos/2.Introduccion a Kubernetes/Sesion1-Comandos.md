# Comandos de Cluster mas habituales

kubectl cluster-info
# Cambiar de Namespace
kubectl config set-context --current --namespace=<nombre-namespace>

# COnfig View
kubectl config view

# Estado de los nodos
kubectl get nodes

# Añadir Output a comandos
kubectl get pods -o wide
kubectl get nodes -o yaml

# Imprimir un campo del output