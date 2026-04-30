#!/bin/bash
kubectl get pods -n todo-dev
echo ""
echo "Health check backend:"
kubectl exec -n todo-dev deployment/backend -- curl -s http://localhost:5000/health 2>/dev/null || echo "Под ожидает..."
