# Deploy Full Stack Application on AWS EKS

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

**Download & Install AWS CLI**:
    ```bash
    sudo apt update
    ```
    
    ```bash
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    ```
    
    ```bash
    sudo apt install unzip
    ```
    
    ```bash
    unzip awscliv2.zip
    ```
    
    ```bash
    sudo ./aws/install
    ```
    
    ```bash
    aws --version
    ```
    
### Step-5: Configure AWS
Give IAM user to this machine (EC2). You need to create Access Key from User.

**AWS CLI Configure**:

    ```bash
    aws configure
    ```
Run this command then provide, Access key, Secret Key, Region of the IAM user.

### Step-6: Install eksctl.

**Download eksctl**:

    ```bash
    curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
    ```
    
**Move to /bin**:

    ```bash
    sudo mv /tmp/eksctl /usr/local/bin
    ```
    
**Check eksctl Version**:

    ```bash
    eksctl version
    ```
    
