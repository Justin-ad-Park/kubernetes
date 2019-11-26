if ! hash -- kubectx 2> /dev/null; then
  echo "Command not found kubectx \n"
  echo "You can install the kubectx with as below script :"
  echo "brew update"
  echo "brew install kubectx"
  exit
fi

echo kubectx -
kubectx -
