#!/bin/bash

eksctl create cluster --name full-stack-cluster --region us-west-2 --node-type c7i-flex.large --nodes-min 2 --nodes-max 2
