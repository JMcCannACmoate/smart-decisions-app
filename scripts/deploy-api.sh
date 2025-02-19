#!/bin/bash
set -e

# Verify deploy token is set
if [ -z "$DEPLOY_TOKEN" ]; then
  echo "DEPLOY_TOKEN environment variable is required"
  exit 1
fi

# Build the API
echo "Building API..."
npm run build

# Deploy API (example using custom deployment)
echo "Deploying API..."
curl -X POST "https://api.deployment.com/deploy" \
  -H "Authorization: Bearer $DEPLOY_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "version": "'"$GITHUB_SHA"'",
    "environment": "production"
  }'

# Verify deployment
echo "Verifying deployment..."
curl -f "https://api.deployment.com/health"
