echo kubectl run -i --rm --tty debug --image=gihyodocker/fundamental:0.1.0 --restart=Never -- bash -il 
echo "Try to type \"curl http://echo/\" as below:"
echo "debug:/# curl http://echo/ \n"
kubectl run -i --rm --tty debug --image=gihyodocker/fundamental:0.1.0 --restart=Never -- bash -il


