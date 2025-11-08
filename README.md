# Deploy Full Stack Application on AWS EKS

### Pre-requisites: AWS knowledge
● In a EC2 machine, you will run eksctl command to provide instructions, to trigger eks
services

● In the same machine, you will install kubectl and run commands to run pods in cluster

● IAM to give access to the EC2 machine

● AWS CLI to run commands with SSH

● AWS Region: Try to avoid N. Virginia or Ohio

## Create Cluster with Eksctl:
### Step-1:
Create an EC2 instance (t2 micro sufficient) because this machine is not for cluster, it is
to trigger the ekscluster
### Step-2:
Connect the machine in your terminal via SSH
### Step-3:
Create an IAM user and attach policy - AdministratorAccess
### Step-4:
You need AWS CLI in the EC2 machine to give IAM user access

1. **Download AWS CLI**:
    ```bash
    sudo apt update
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    ```
2. **Install Unzip**:
   ```bash
    sudo apt install unzip
    ```
3. **Unzip AWS CLI file**:
   ```bash
    unzip awscliv2.zip
    ```
4. **Install AWS CLI**:
   ```bash
    sudo ./aws/install
    ```
5. **Check Version**:
   ```bash
    aws --version
    ```
