#!/bin/bash
cd $(dirname "$0")

source test-utils.sh vscode

# Run common tests
checkCommon

# Help determine distro
. /etc/os-release 

# Run template specific tests
checkExtension "ms-vscode.cpptools"
checkOSPackages "command-line-tools" build-essential cmake cppcheck valgrind clang lldb llvm gdb
checkOSPackages "tools-for-vcpkg" tar curl zip unzip pkg-config bash-completion ninja-build
VCPKG_UNSUPPORTED_ARM64_VERSION_CODENAMES="stretch bionic"
if [ "$(dpkg --print-architecture)" = "amd64" ] || [[ ! "${VCPKG_UNSUPPORTED_ARM64_VERSION_COD