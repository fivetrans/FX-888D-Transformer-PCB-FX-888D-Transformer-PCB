#!/bin/bash
set -e

OSURL=""
OSTAG=""

find_os_props() {
    . /etc/os-release
    case $ID in
        debian)
            case $VERSION_CODENAME in
                stretch)
                    OSTAG="1683458"
                    OSURL="debian-9-stretch-amd64"
                    ;;
                *)
                    OSTAG="1683461"
                    OSURL="debian-buster-amd64"
                    ;;
            esac
            ;;
        ubuntu)
            case $VERSION_CODENAME in
                bionic)
                    OSTAG="1683439"
                    OSURL="ubuntu-bionic-amd64"
                    ;;
                groovy)
                    OSTAG="1683454"
                    OSURL="ubuntu-groovy-amd64"
                    ;;
                *)
                    OSTAG="1683444"
                    OSURL="ubuntu-focal-amd64"
                    ;;
            esac
            ;;
        *)
            echo "Unsupported OS choice."
            exit 1
            ;;
    esac
}

# Run apt-get if needed.
apt_get_update_if_needed() {
    if [ ! -d "/var/lib/apt/lists" ] || [ "$(ls /var/lib/apt/lists/ | wc -l)" = "0" ]; then
        echo "Running apt-get update..."
        apt-get update
    else
        echo "Skipping apt-get update."
    fi
}

# Check if packages are installed and installs them if not.
check_packages() {
    if ! dpkg -s "$@" > /dev/null 2>&1; then
        apt_get_update_if_needed
        apt-get -y install --no-install-recommends "$@"
    fi
}

TMP_DIR=$(mktemp -d -t maria-XXXXXXXXXX)
MARIADB_CONNECTOR=""
SOURCE_INCLUDE_DIR=""
SOURCE_LIB_DIR=""
SOURCE_PLUGIN_DIR=""

cleanup() {
    EXIT_CODE=$?
    set +e
    if [[ -n ${TMP_DIR} ]]; then
        cd /
        rm -rf ${TMP_DIR}
    fi
    exit $EXIT_CODE
}
trap cleanup EXIT

#Set up external repository and install C Connector
check_pac