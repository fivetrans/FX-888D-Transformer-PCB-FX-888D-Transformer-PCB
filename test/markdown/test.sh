#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Run common tests
checkCommon

# Actual tests
checkExtension "yzhang.markdown-all-in-one"
checkExtension "streetsidesoftware.code-spell-checker"
checkExtension "d