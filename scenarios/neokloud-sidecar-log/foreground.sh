#!/bin/bash

echo "Applying initial deployment from assets..."
kubectl apply -f /root/assets/deploy/initial-deployment.yaml
echo "Applied"