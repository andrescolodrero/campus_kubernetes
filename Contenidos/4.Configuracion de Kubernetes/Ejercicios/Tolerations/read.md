# add taint
kubectl taint nodes node1 key1=value1:NoSchedule

o

'tolerations:
- key: "key1"
  operator: "Equal"
  value: "value1"
  effect: "NoSchedule"
'

# Eliminar el taint
kubectl taint nodes node1 

# Otros Ejemplos

kubectl taint nodes node1 key1=value1:NoSchedule
kubectl taint nodes node1 key1=value1:NoExecute
kubectl taint nodes node1 key2=value2:NoSchedule

# Eviction
kubectl drain <nodo> 

Marca el nodo como "NoSchedule", lo que evita que nuevos pods se programen en él.
Espera a que todos los pods en el nodo terminen normalmente o se muevan a otros nodos.
Elimina los pods del nodo de destino.

# Rollback

kubectl uncordon <>


