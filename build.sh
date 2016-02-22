# /bin/bash

# Exit script on command fail
set -e

# Auto export variables
set -a

# Exit if there are any parameter reference not passed as argument
set -u

echo "Building suizman/dform:`cat version | sed '/^\s*$/d' | tail -n1`"
docker build --tag=suizman/dform:`cat version | sed '/^\s*$/d' | tail -n1` .

