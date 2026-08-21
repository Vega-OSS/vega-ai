#!/usr/bin/env bash

set -e

ACTION=${1:-up}

if [ "$ACTION" == "up" ]; then
    echo "Deploying Vega-AI Infrastructure to local K3s..."
    kubectl apply -f deploy/k8s/local/infra/postgres.yaml
    kubectl apply -f deploy/k8s/local/infra/redis.yaml
    kubectl apply -f deploy/k8s/local/infra/kafka.yaml
    kubectl apply -f deploy/k8s/local/infra/kafka-ui.yaml
    kubectl apply -f deploy/k8s/local/infra/kafka-connect.yaml
    kubectl apply -f deploy/k8s/local/infra/istio-config.yaml
    kubectl apply -f deploy/k8s/local/infra/kong.yaml
    kubectl apply -f deploy/k8s/local/infra/prometheus.yaml
    kubectl apply -f deploy/k8s/local/infra/grafana.yaml
    kubectl apply -f deploy/k8s/local/infra/otel-collector.yaml
    echo "All local infrastructure manifests applied!"
elif [ "$ACTION" == "down" ]; then
    echo "Tearing down Vega-AI Infrastructure..."
    kubectl delete -f deploy/k8s/local/infra/ --ignore-not-found=true
    echo "Local infrastructure torn down!"
else
    echo "Usage: $0 {up|down}"
    exit 1
fi
