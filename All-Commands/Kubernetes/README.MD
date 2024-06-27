## To create the deployment using the imparative command
```
kubectl create deployment my-deployment --image=nginx --namespace=my-namespace
```
## Get cluster information
```
kubectl cluster-info
```
## Describe a specific POD
```
kubectl descrice pod mypod
```
## Apply the deployment to the kubernetes cluster
```
kubectl apply -f deployment.yaml
```
## Delete the deployment to the kubernetes cluster
```
kubectl apply -f deployment.yaml
```
## To check the status of Pods, Deployments and services
```
kubectl get pods
kubectl get deployments
kubectl get services
```
## Scale the number of replicas in deployment or statefulset
```
kubectl scale deployment my-app --replicas=5
```
## To update the container Image
```
kubectl set image deployment/my-app my-container=new-image:latest
```
## Roll back to previous version
```
kubectl rollout undo deployment/my-app
```
## To get the logs for the specific service
```
kubectl logs <pod-name>
```
## To scale the number of replicas
```
kubectl scale deployment my-app --replicas=3
```
## Start kubelet service on worker nodes
```
sudo systemctl enable kubelet
sudo systemctl start kubelet
```
## Execute a command in a running POD
```
kubectl exec -it my-pod --/bin/bash
```
## selecting pods with specific label
```
kubectl get pods -l key=value
```
## Selecting PODs with multiple labels
```
kubectl get pods -l environment=production,app=web
```
## To get HPA
```
kubectl get hpa -o yaml
```
## To create secret
```
kubectl apply -f my-secret.yaml
```