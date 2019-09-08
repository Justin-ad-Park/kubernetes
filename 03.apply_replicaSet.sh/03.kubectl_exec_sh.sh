if [ -z "$1" ]
then
  echo "Mandatory Parameter \$1 : pod name"
else
  kubectl exec -it $1 sh -c nginx
fi

