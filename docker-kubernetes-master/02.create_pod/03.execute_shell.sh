echo "kubectl exec -it {Pod_Name} sh -c {1container_name}"
kubectl exec -it simple-echo sh -c nginx

