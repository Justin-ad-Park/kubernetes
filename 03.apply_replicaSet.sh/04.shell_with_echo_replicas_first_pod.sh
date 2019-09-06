FIRST_POD_NAME=$(kubectl get pods|grep echo|head -1 | gawk '{print $1}')
echo "Execute shell with $FIRST_POD_NAME"
kubectl exec -it $FIRST_POD_NAME sh -c nginx
