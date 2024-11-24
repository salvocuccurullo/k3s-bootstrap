#!/bin/bash

echo "Installing the Nginx controller..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.11.3/deploy/static/provider/baremetal/deploy.yaml

sleep 30

echo "Creating Load Balancer service"
kubectl -n ingress-nginx create -f loadbalancer.yaml

echo "Installing Foundation Software"
kubectl create -f k3s-helm-charts/*
