#!/bin/bash

set -euo pipefail

export INSTALL_PATH=$(pwd)

# Prompt for password once. 
# Refresh sudo timestamp and keep it alive until install is complete
sudo -v
while true; do sudo -n true; sleep 60; done 2>/dev/null &
trap 'kill %1' EXIT

# Install
source "$INSTALL_PATH/install/all.sh"
