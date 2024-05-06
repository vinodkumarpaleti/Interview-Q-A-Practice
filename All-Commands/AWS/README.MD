## To create Autoscal in EKS by AWS CLI
```
eksctl create nodegroup \
    --cluster <your-cluster-name> \
    --region <your-region> \
    --name <your-nodegroup-name> \
    --nodes-min 2 \
    --nodes-max 10 \
    --node-type t3.medium \
    --asg-access
```