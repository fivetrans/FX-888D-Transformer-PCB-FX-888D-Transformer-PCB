#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Remote - Containers does not auto-sync UID/GID for Doc