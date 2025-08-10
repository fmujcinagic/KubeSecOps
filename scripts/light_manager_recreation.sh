#!/usr/bin/env bash
# This is a lightweight script that only runs Wazuh manager, without running Wazuh dashboard and Wazuh indexer.

echo " -- Running the recreation script -- "
if docker ps -a --format '{{.Names}}' | grep -q '^wazuh-manager$'; then
  echo "Container 'wazuh-manager' exists. Now we are going to stop it and recreate it."
  docker stop wazuh-manager
  docker rm wazuh-manager
else
  echo "Container 'wazuh-manager' does not exist."
fi
docker volume create wazuh-data >/dev/null # with >/dev/null we are suppressing the additional message
docker run -d --name wazuh-manager \
  --add-host=host.docker.internal:host-gateway \
  -p 1514:1514/udp -p 1515:1515 \
  -v wazuh-data:/var/ossec/data \
  wazuh/wazuh-manager:4.12.0
