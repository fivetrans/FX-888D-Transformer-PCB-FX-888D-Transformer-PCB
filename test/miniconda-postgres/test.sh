#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Run common tests
checkCommon

# template specific tests
checkExtension "ms-python.python"
checkExtension "ms-python.vscode-pylance"
check "python" python --version
check "test-project: database.py" python ./database.py
ch