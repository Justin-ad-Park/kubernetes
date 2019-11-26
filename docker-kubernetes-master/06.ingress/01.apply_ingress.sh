MANDATORY_FILE=mandatory.yaml
if [ ! -f "$MANDATORY_FILE" ]; then
  echo "$MANDATORY_FILE is not exist\nDownload the file with wget\n"
  wget https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.16.2/deploy/mandatory.yaml
fi

kubectl apply -f mandatory.yaml

CLOUD_GENERIC=cloud-generic.yaml
if [ ! -f "$CLOUD_GENERIC" ]; then
  echo "$CLOUD_GENERIC is not exist\nDownload the file with wget\n"
  wget hhttps://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-0.16.2/deploy/provider/cloud-generic.yaml
fi

kubectl apply -f cloud-generic.yaml
