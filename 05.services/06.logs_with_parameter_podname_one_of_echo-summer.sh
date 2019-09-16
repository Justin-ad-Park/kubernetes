if [ -z "$1" ]
then
  echo "Mandatory Parameter \$1 : echo-summer-* pod name"
  exit
fi

echo kubectl logs -f $1 -c echo
kubectl logs -f $1 -c echo
