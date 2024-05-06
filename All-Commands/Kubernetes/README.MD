## To create the deployment using the imparative command
```
kubectl create deployment my-deployment --image=nginx --namespace=my-namespace
```
## Apply the manifest files to the kubernetes cluster
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