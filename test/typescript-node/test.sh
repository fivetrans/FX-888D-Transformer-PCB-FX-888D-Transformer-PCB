#!/bin/bash
cd $(dirname "$0")

source test-utils.sh node

# Run common tests
checkCommon

# template specific tests
checkExtension "dbaeumer.vscode-eslint"
check "node