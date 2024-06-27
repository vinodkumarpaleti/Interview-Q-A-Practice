## To create the deployment using the imparative command
```
kubectl create deployment my-deployment --image=nginx --namespace=my-namespace
```
## Get cluster information
```
kubectl cluster-info
```
## Describe a POD
```
kubectl descrice pod mypod
```
## Describe a POD from specific namespace
```
kubectl descrice pod mypod -n my-namespace
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
kubectl get pods (or) kubectl get po
```
## To get the pods from specific namespaces
```
kubectl get po -n my-namespace
```
## To get the ConfigMap from a namespace
```
kubectl get configmap -n default
```
## To get the detailed ConfigMap from a namespace
```
kubectl get configmap <configmap_name> -n default -o yaml
```
## Filter the namespaces
```
kubectl get ns | grep -i default
```
## To get the deployments
```
kubectl get deployment
```
## To get the deployments from specific namespaces
```
kubectl get deployment -n default
```
## To get the services
```
kubectl get services
    (or)
kubectl get svc
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
## To get the namespace
```
kubectl get ns
```
## To get the replicasets
```
kubectl get rs
```

## To get the replicasets from specific namespace
```
kubectl get rs -n my-namespace
```
## List the PODs from a namespace with specific name
```
kubectl get po -n default | grep -i account
```
## To get the deployments from specific namespace 
```
kubectl get deployment -n default |grep -i account
```
## To get the deployment from specific account-name
```
kubectl get deployment accounts-service -n default -o yaml
```
## To get the service from specific namespace and account
```
kubectl get svc accounts-service -n default -o yaml
```
## To get the service from specific namespace
```
kubectl get svc -n default
```
## To get the logs from POD in specific namespace
```
kubectl logs <Pod_name> -n default -c  <container_name>
```
## To run the commands inside the POD or container in a namespace
```
kubectl exec -it <Pod_name> -n default bash
```
## list environment details inside pod.
```
kubectl get sa -n default
sa(service account)
```