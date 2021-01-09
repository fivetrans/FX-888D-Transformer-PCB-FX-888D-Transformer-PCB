
# C++ & MariaDB (cpp-mariadb)

Develop C++ applications on Linux. Includes Debian C++ build tools.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Debian / Ubuntu version (use Debian 11, Ubuntu 18.04/22.04 on local arm64/Apple Silicon): | string | debian-11 |
| reinstallCmakeVersionFromSource | Install CMake version different from what base image has already installed. | string | none |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/cpp ([source](https://github.com/devcontainers/images/tree/main/src/cpp))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/cpp/.devcontainer/devcontainer.json))

### Using Vcpkg

This dev container and its associated image includes a clone of the [`Vcpkg`](https://github.com/microsoft/vcpkg) repo for library packages, and a bootstrapped instance of the [Vcpkg-tool](https://github.com/microsoft/vcpkg-tool) itself.

The minimum version of `cmake` required to install packages is higher than the version available in the main package repositories for Debian (<=11) and Ubuntu (<=21.10).  `Vcpkg` will download a compatible version of `cmake` for its own use if that is the case (on 