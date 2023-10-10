# Lista de Comandos
kubectl config 
kubectl get svc

# DEsplegar Deployment 
Checkear IP:

kubectl get pods -l run=my-nginx -o custom-columns=POD_IP:.status.podIPs

kubectl expose deployment/my-nginx

'apiVersion: v1
kind: Service
metadata:
  name: my-nginx
  labels:
    run: my-nginx
spec:
  ports:
  - port: 80
    protocol: TCP
  selector:
    run: my-nginx
'

kubectl describe svc my-nginx
kubectl get endpointslices -l kubernetes.io/service-name=my-nginx



