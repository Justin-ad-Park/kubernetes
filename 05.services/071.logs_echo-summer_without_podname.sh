FIRST_POD_NAME=$(kubectl get pods|grep echo-summer|head -1 | gawk '{print $1}')
echo kubectl logs -f $FIRST_POD_NAME -c echo
kubectl logs -f $FIRST_POD_NAME -c echo
