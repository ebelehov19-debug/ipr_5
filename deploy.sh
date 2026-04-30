#!/bin/bash
kubectl apply -k infrastructure/postgres/kustomize/overlays/dev
kubectl apply -k infrastructure/redis/kustomize/base
sleep 10
kubectl apply -k app/kustomize/overlays/dev
echo "Проверка:"
kubectl get pods -n todo-dev
