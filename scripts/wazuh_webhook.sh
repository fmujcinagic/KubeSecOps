#!/usr/bin/env bash
set -euo pipefail
WAZUH_CONTAINER=${WAZUH_CONTAINER:-wazuh-manager}

# verify that the manager container is running
./light_manager_recreation.sh
if ! docker network inspect kind >/dev/null 2>&1; then
    echo "Error: Docker network 'kind' not found."
    exit 1
fi
WEBHOOK_HOST_IP=$(docker network inspect kind --format '{{(index .IPAM.Config 1).Gateway}}' 2>/dev/null) || {
    echo "Error: Failed to retrieve gateway IP from kind network."
    exit 1
}
if [ -z "$WEBHOOK_HOST_IP" ]; then
    echo "Error: WEBHOOK_HOST_IP is empty."
    exit 1
fi
echo "Container '${WAZUH_CONTAINER}' exists with a IP: ${WEBHOOK_HOST_IP}. Now we are going to run the webhook script."