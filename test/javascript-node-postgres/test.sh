#!/bin/bash
cd $(dirname "$0")

source test-utils.sh node

# Remote - Containers does not auto-sync UID/GID for Docker Compose,
# so make sure test project prvs match the non-root user in the container.
fixTestProjectFolderPrivs

# Run common tests
checkCommon

# template specific tests
checkExtension "dbaeumer.vscode-eslint"
check "node" node --version
sudo rm -f yarn.lock
check "yarn"