# Para Installar
ver Instalaciones/Kind


# Crear un cluster desde fichero
kind create cluster --name <nombre> --config kind.yml

# Estado del cluster
kind get clusters



# Test Deployment y WSL Ports
kind create cluster --config multi.yml
kubectl create deployment nginx --image=nginx --port=80
kubectl create service nodeport nginx --tcp=80:80 --node-port=30000
