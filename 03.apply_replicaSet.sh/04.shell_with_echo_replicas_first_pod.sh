if ! hash -- gawk 2> /dev/null; then
  echo "Command not found gawk \n"
  echo "You can install the gawk with as below script :"
  echo "brew update"
  echo "brew install gawk"
  exit
fi

FIRST_POD_NAME=$(kubectl get pods|grep echo|head -1 | gawk '{print $1}')
echo "Execute shell with $FIRST_POD_NAME"

kubectl exec -it $FIRST_POD_NAME sh -c nginx
