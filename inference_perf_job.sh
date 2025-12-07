gcloud projects add-iam-policy-binding <project> \
    --member "principal://iam.googleapis.com/projects/###/locations/global/workloadIdentityPools/.svc.id.goog/subject/ns/default/sa/" \
    --role "roles/storage.objectUser"

kubectl describe configmaps inference-perf-config
# Rerun job
kubectl delete job inference-perf && kubectl delete configmap inference-perf-config


kubectl create configmap inference-perf-config --from-file=config.yml
kubectl apply -f deploy/manifests.yaml
