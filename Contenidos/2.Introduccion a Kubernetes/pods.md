 
 # COmandos de pods
 kubectl get pods
 kubectl get pods -o wide
 kubectl describe pods 
 kubectl get pods --show-labels
 kubectl get pods -l app=nginx
 kubectl get pods -o yaml
 kubectl get pods --field-selector status.phase=Running

 # Acceder a contenedor

 kubectl exec -it <nombre> -- /bin/bash