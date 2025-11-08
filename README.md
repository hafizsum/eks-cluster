# Deploy EKS Cluster.

### Pre-requisites: AWS knowledge
● In a EC2 machine, you will run eksctl command to provide instructions, to trigger eks
services

● In the same machine, you will install kubectl and run commands to run pods in cluster

● IAM to give access to the EC2 machine

● AWS CLI to run commands with SSH

● AWS Region: Try to avoid N. Virginia or Ohio

---

## Create Cluster with Eksctl:

### Step-1:
Create an EC2 instance (t2 micro sufficient) because this machine is not for cluster, it is to trigger the ekscluster
### Step-2:
Connect the machine in your terminal via SSH
### Step-3:
Create an IAM user and attach policy - AdministratorAccess
### Step-4:
You need AWS CLI in the EC2 machine to give IAM user access

### Step-5: Download & Install AWS CLI

1. Update System.
    ```bash
    sudo apt update
    ```
2. Download AWS CLI.
    ```bash
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    ```
3. Install Unzip package.
    ```bash
    sudo apt install unzip
    ```
4. Unzip AWS CLI downloaded file.
    ```bash
    unzip awscliv2.zip
    ```
5. Install AWS CLI.
    ```bash
    sudo ./aws/install
    ```
6. Check Version.
    ```bash
    aws --version
    ```
### Step-6: Configure AWS
Give IAM user to this machine (EC2). You need to create Access Key from User.

1. AWS CLI Configure.
    ```bash
    aws configure
    ```
Run this command then provide, Access key, Secret Key, Region of the IAM user.

### Step-6: Install eksctl.

1. Download eksctl.
    ```bash
    curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
    ```
2. Move eksctl to /bin.
    ```bash
    sudo mv /tmp/eksctl /usr/local/bin
    ```
2. Check eksctl Version.
    ```bash
    eksctl version
    ```
Note: eksctl is the tool used to create EKS cluster

### Step-7: Install kubectl.

1. Download kubectl.
    ```bash
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    ```
2. Verify downloded file.
    ```bash
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
    ```
3. Check Status.
    ```bash
    echo "$(cat kubectl.sha256) kubectl" | sha256sum --check
    ```
4. Install kubectl.
    ```bash
    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    ```
5. Check kubectl Version.
    ```bash
    kubectl version --client
    ```
Note: kubectl is the tool to interact with kubernetes cluster.

### Step-8: Create eks-cluster.
1. Create the cluster & node group.
    ```bash
    eksctl create cluster --name full-stack-cluster --region us-west-2 --node-type c7i-flex.large --nodes-min 2 --nodes-max 2
    ```
2. OR
    ```bash
     eksctl create cluster --name full-stack-cluster --region us-west-2 --node-type t2.medium --nodes-min 2 --nodes-max 2
    ```
### Step-9: Go to: Elastic Kubernetes Services and see all.
1. Get Pods.
    ```bash
    kubectl get pods
    ```
2. Get Namespace.
    ```bash
    kubectl get namespace
    ```
3. Get pods in the Namespace.
    ```bash
    kubectl get pods -n kube-system
    ```
4. Get Nodes.
    ```bash
    kubectl get node
    ```
5. Get Cluster.
    ```bash
    eksctl get cluster
    ```

Note: If we have two clusters:

● full-stack-cluster

● hafiz-cluster

1. If we want cubectl point to hafiz-cluster, your command should be:
    ```bash
    aws eks update-cubeconfig --name hafiz-cluster --region us-west-2
    ```
2. We should see nodes from hafiz-cluster, If now run below command.
    ```bash
    kubectl get nodes
    ```

Cheers!

