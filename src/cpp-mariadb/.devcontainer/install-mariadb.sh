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
                    OSURL="u