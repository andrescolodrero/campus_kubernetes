# Kubectl Trucos

### Comandos habituales de KubeCtl

<details><summary>show</summary>
<p>

```bash
# Autocompletar para comandos de kubectl en bash
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc

# Autocompletar para comandos de kubectl en zsh
source <(kubectl completion zsh)
echo "source <(kubectl completion zsh)" >> ~/.zshrc

# Usar dos archivos de configuración kubeconfig llamados 'config' y 'kubeconfig2' al mismo tiempo
export KUBECONFIG=kubeconfig1:kubeconfig2:kubeconfig3:kubeconfig4

# Aplanar kubeconfig y guardarlo en el directorio ~/.kube como un archivo llamado config
kubectl config view --flatten > ~/.kube/config

# Listar la configuración de kubeconfig
kubectl config view

# Listar todos los usuarios en el clúster
kubectl config view -o jsonpath='{.users[*].name}'

# Encontrar dónde se está ejecutando el plano de control
kubectl cluster-info

# Obtener información del sistema (administrador de control, planificador y etcd)
kubectl get componentstatus

# Listar todos los recursos disponibles para crear (que aún no se han creado)
kubectl api-resources

# Listar recursos de espacios de nombres en el clúster de Kubernetes
kubectl api-resources --namespaced=true

# Listar recursos no pertenecientes a espacios de nombres en el clúster de Kubernetes
kubectl api-resources --namespaced=false

# Obtener las métricas en bruto de los nodos
kubectl get --raw /apis/metrics.k8s.io/v1beta1/nodes

# Obtener las métricas en bruto de los pods
kubectl get --raw /apis/metrics.k8s.io/v1beta1/pods

# Listar todos los eventos en el espacio de nombres predeterminado
kubectl get events

# Listar todos los eventos en todos los espacios de nombres
kubectl get events --all-namespaces

# Listar todos los eventos en el espacio de nombres 'kube-system'
kubectl get events -n kube-system

# Observar los eventos en tiempo real en el espacio de nombres predeterminado
kubectl get events -w

# En una configuración de múltiples planos de control, encontrar el líder elegido (en anotaciones)
kubectl get ep kube-scheduler -n kube-system -o yaml


# Ver controladores de admisión habilitados
kubectl exec kube-apiserver-kind-control-plane -n kube-system -- kube-apiserver -h | grep enable-admission-plugins

# Ver controladores de admisión habilitados y deshabilitados
ps -ef | grep kube-apiserver | grep admission-plugins

# Crear el espacio de nombres 'robot-shop'
kubectl create ns robot-shop

# Listar todos los espacios de nombres en el clúster
kubectl get ns

# Obtener la configuración YAML de todos los espacios de nombres
kubectl get ns -o yaml

# Listar todos los recursos de Kubernetes en todos los espacios de nombres
kubectl get all --all-namespaces

# Describir la configuración del espacio de nombres
kubectl describe ns

# Editar el espacio de nombres 'robot-shop'
kubectl edit ns robot-shop

# Eliminar el espacio de nombres 'robot-shop'
kubectl delete ns robot-shop

# Listar todos los contextos disponibles desde kubeconfig
kubectl config get-contexts

# Obtener el contexto actual de kubectl
kubectl config current-context

# Cambiar al contexto de un clúster llamado 'gkeCluster'
kubectl config set-context gkeCluster

# Establecer el contexto al contexto actual, incluyendo el espacio de nombres 'webapp'
kubectl config set-context --current --namespace webapp

# Cambiar el contexto a un espacio de nombres llamado 'robot-shop' en el clúster llamado 'gkeCluster'
kubectl config set-context gkeCluster --namespace robot-shop

# Cambiar el contexto a un usuario llamado 'admin' en el clúster llamado 'gkeCluster'
kubectl config set-context gkeCluster --user=admin

# Establecer el contexto predeterminado en el clúster 'gkeCluster'
kubectl config use-context gkeCluster

# Eliminar un clúster llamado 'docker-desktop' de kubeconfig
kubectl config delete-cluster docker-desktop

# Listar todos los nodos en el espacio de nombres predeterminado
kubectl get no

# Lo mismo que arriba, pero con información adicional (incluyendo la dirección IP de los nodos)
kubectl
```

</p>
</details>