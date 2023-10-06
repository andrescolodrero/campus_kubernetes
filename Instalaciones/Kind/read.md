# parche para metrics serve

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

kubectl patch -n kube-system deployment metrics-server --type=json \
  -p '[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'

Probar FUncionamiento:

kubectl top nodes
NAME                CPU(cores)   CPU%   MEMORY(bytes)   MEMORY%
lab-control-plane   197m         2%     9Mi             0%
lab-worker          36m          0%     3Mi             0%
lab-worker2         28m          0%     3Mi             0%
lab-worker3         31m          0%     5Mi             0%
