#!/bin/bash

EXTERNAL_IP=$(curl ifconfig.me/ip)
export KUBERNETES_KUBELET_HOST=${EXTERNAL_IP}

/entrypoint.sh
