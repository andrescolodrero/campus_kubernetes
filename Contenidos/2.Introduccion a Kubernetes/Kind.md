# Para Installar
https://kind.sigs.k8s.io/

# Crear un cluster desde fichero
kind create cluster --config kind.yml

# Estado del cluster
kind get cluster



# Test Deployment y WSL Ports
kind create cluster --config multi.yml
kubectl create deployment nginx --image=nginx --port=80
kubectl create service nodeport nginx --tcp=80:80 --node-port=30000
