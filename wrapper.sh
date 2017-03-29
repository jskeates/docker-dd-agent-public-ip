#!/bin/bash

echo "Fetching public IP..."
EXTERNAL_IP=$(curl ifconfig.me/ip)
echo "Public IP of this node is ${EXTERNAL_IP}"

echo "Starting dd-agent..."
KUBERNETES_KUBELET_HOST=${EXTERNAL_IP} /entrypoint.sh supervisord -n -c /etc/dd-agent/supervisor.conf
