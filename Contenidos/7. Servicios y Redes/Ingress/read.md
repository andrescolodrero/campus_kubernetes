# Crear un Cluster
ingress.yml

# Desplegar NGINX Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s


kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/usage.yaml

