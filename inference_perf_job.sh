kubectl describe configmaps inference-perf-config


kubectl delete job inference-perf && kubectl delete configmap inference-perf-config


kubectl create configmap inference-perf-config --from-file=config.yml
kubectl apply -f deploy/manifests.yaml
