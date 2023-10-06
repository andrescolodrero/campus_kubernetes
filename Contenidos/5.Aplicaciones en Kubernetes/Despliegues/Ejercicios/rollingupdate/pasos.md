## Rolling Update
Modificar YAML
kubectl rollout status deployment/fake-service --record # record mantiene la historia del deployment
# Probar con una version que no existe
kubectl rollout status deployment/fake-service
kubectl rollout undo  deployment/fake-service

#ver errores y elimnar deployment
# usar "fix"
