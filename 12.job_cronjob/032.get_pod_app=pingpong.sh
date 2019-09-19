POD_NAME=$(kubectl get pod -l app=pingpong|grep pingpong|head -2|tail -1|gawk '{print $1}')

echo "Pod name is $POD_NAME"
echo "kubectl logs $POD_NAME"
kubectl logs $POD_NAME
