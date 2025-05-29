#!/bin/bash

# Check if SITE and TOKEN are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Error: Both <SITE> and <TOKEN> arguments are required."
  echo "Usage: $0 <SITE> <TOKEN>"
  exit 1
fi

SITE="$1"
TOKEN="$2"

# Execute the curl command
curl -si -X POST "https://admin.hlx.page/config/adobecom/sites/${SITE}/apiKeys.json" \
  -H "X-Auth-Token: ${TOKEN}" \
  --json '{ "description": "API key for development environment", "roles": ["publish"] }'
