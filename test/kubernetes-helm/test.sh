#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Run common tests
checkCommon

# Execute .bashrc with the SYNC_LOCALHOST_KUBECONFIG set
export SYNC_LOCALHOST_KUBECONFIG=true
exec bash 

# Actual tests
checkExtension "ms-azure