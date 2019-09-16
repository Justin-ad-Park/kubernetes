if [ -z "$1" ]
then
  echo "Mandatory Parameter \$1 : pod name"
  exit
fi

if ! hash -- gawk 2> /dev/null; then
  echo "Command not found gawk \n"
  echo "You can install the gawk with as below script :"
  echo "brew update"
  echo "brew install gawk"
  exit
fi

kubectl exec -it $1 sh -c nginx

