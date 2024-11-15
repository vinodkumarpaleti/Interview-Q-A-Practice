#!/bin/bash
# Define the EKS cluster name and region
EKS_CLUSTER_NAME="your-eks-cluster-name"  # Replace with your EKS cluster name
AWS_REGION="your-aws-region"              # Replace with your AWS region, e.g., "us-west-2"
# Check if AWS CLI is installed
if ! command -v aws &> /dev/null
then
    echo "AWS CLI not found! Please install it and try again."
    exit 1
fi

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null
then
    echo "kubectl not found! Please install it and try again."
    exit 1
fi
# Check if eksctl is installed
if ! command -v eksctl &> /dev/null
then
    echo "eksctl not found! Please install it and try again."
    exit 1
fi
# Log in to AWS (optional if already configured)
echo "Logging in to AWS..."
aws configure
# Get the EKS cluster credentials
echo "Getting credentials for EKS cluster $EKS_CLUSTER_NAME..."
aws eks --region $AWS_REGION update-kubeconfig --name $EKS_CLUSTER_NAME
# Check if kubectl can access the cluster
echo "Verifying kubectl connection..."
kubectl cluster-info
# List all pods in the default namespace (change the namespace if needed)
echo "Listing all pods in the default namespace..."
kubectl get pods
# Prompt for the pod name to restart
echo "Enter the name of the pod you want to restart:"
read POD_NAME
# Optionally, check if the pod exists
kubectl get pod $POD_NAME > /dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Pod $POD_NAME not found. Exiting."
    exit 1
fi
# Restart the pod by deleting it (Kubernetes will automatically recreate it)
echo "Restarting pod $POD_NAME..."
kubectl delete pod $POD_NAME
echo "Pod $POD_NAME has been restarted."
```
