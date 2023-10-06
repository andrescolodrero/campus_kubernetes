# Volume con hostPath

1. Desplegar ddpv
2. desplegar pod
3. Acceder al pod y crear un ficher en /mnt
4. Expose Deployment: 
kubectl expose deployment blue-app --type="NodePort"       