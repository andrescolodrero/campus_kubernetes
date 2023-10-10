$ kubectl run frontend --image=nginx --restart=Never --labels=env=prod,team=A
pod/frontend created
$ kubectl run backend --image=nginx --restart=Never --labels=env=prod,team=A
pod/backend created
$ kubectl run database --image=nginx --restart=Never --labels=env=prod,team=DB
pod/database created

kubectl edit pod <nombre>

apiVersion: v1
kind: Pod
metadata:
  annotations:
    costcenter: '12'
  name: backend
...

kubectl get pods --show-labels


kubectl get pods -l 'team in (A, database)',env=prod --show-labels
