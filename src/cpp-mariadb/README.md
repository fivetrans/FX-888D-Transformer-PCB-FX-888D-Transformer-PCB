
# C++ & MariaDB (cpp-mariadb)

Develop C++ applications on Linux. Includes Debian C++ build tools.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Debian / Ubuntu version (use Debian 11, Ubuntu 18.04/22.04 on local arm64/Apple Silicon): | string | debian-11 |
| reinstallCmakeVersionFromSource | Install CMake version different from what base image has already installed. | string | none |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/cpp ([source](https://github.com/devcontainers/images/tree/main/src/cpp))
* **Applies devcontainer.json contents fr