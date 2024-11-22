#!/bin/bash

echo "Installing the Nginx controller..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.2/deploy/static/provider/baremetal/deploy.yaml

echo "Creating Load Balancer service"
kubectl create -f loadbalabcer.yaml
