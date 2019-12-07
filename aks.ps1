az login

az acr login --name itrain0112


#set image

docker image ls
#tag image for acr

docker tag akshaymvcapp itrain0112.azurecr.io/akshaymvcapp:v1
#push the image

docker push itrain0112.azurecr.io/akshaymvcapp:v1


az aks get-credentials --resource-group RG-ASP --name aks-itrain-0112

kubectl get nodes

kubectl apply -f D:\itrain\sample.yaml

kubectl get service akshaymvcapp --watch