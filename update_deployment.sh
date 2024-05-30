#!/bin/bash

# Check if BUILD_NUMBER is set
if [ -z "$BUILD_NUMBER" ]; then
  echo "BUILD_NUMBER is not set. Exiting."
  exit 1
fi

# Update the deployment.yml file with the new build number
sed -i "s/myangular-cicd:[0-9]\+/myangular-cicd:$BUILD_NUMBER/g" deployment.yml