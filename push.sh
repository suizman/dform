# /bin/bash

# Exit script on command fail
set -e

# Auto export variables
set -a

# Exit if there are any parameter reference not passed as argument
set -u


# Tag as latest and push both versions
echo "Tag suizman/dform:`cat version | sed '/^\s*$/d' | tail -n1` as suizman/dform:latest"

docker tag suizman/dform:`cat version | sed '/^\s*$/d' | tail -n1` suizman/dform:latest

echo "Pushing push suizman/dform:latest"
docker push suizman/dform:latest && \

echo "Pushing suizman/dform:`cat version | sed '/^\s*$/d' | tail -n1`"
docker push suizman/dform:`cat version | sed '/^\s*$/d' | tail -n1`

