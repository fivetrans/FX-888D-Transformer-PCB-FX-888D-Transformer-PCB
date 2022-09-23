#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Run common tests
checkCommon

# Prep
echo -e "\nGetting Maven wrapper..."
curl -sSL https://github.com/takari/maven-wrapper