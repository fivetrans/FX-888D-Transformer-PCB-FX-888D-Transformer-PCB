#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Run common tests
checkCommon

# Help determine distro
. /etc/os-release 

# Run template specific tests
checkExtension "ms-vscode.cpptools"
checkOSPackages "command-line-