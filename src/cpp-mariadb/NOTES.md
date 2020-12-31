This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/cpp ([source](https://github.com/devcontainers/images/tree/main/src/cpp))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/cpp/.devcontainer/devcontainer.json))

### Using Vcpkg

This dev container and its associated image includes a clone of the [`Vcpkg`](https://github.com/microsoft/vcpkg) repo for library packages, and a bootstrapped instance of the [Vcpkg-tool](https://github.com/microsoft/vcpkg-tool) itself.

The minimum version of `cmake` required to install packages is higher than the version available in the main package repositories for Debian (<=11) and Ubuntu (<=21.10).  `Vcpkg` will download a compatible version of `cmake` for its own use if that is the case (on x86_64 architectures), however you can opt to reinstall a different version of `cmake` globally by replacing `${templateOption:reinstallCmakeVersionFromSource}` with version (say 3.21.5) in `.devcontainer/Dockerfile`. This will install `cmake` from its github releases.

Most additional library packages installed using Vcpkg will be downloaded from their [official distribution locations](https://github.com/microsoft/vcpkg#security). To configure Vcpkg in this container to access an alternate registry, more information can be found here: [Registries: Bring your own libraries to vcpkg](https://devblogs.microsoft.com/cppblog/registries-bring-your-own-libraries-to-vcpkg/).

To update the available library packages, pull the latest from the git repository using the following command in the terminal:

```sh
cd "${VCPKG_ROOT}"
git pull --ff-only
```

> Note: Please review the [Vcpkg license details](https://github.com/microsoft/vcpkg#license) to better understand its own license and additional license information pertaining to library packages and supported ports.

### Using the MariaDB Database

This template creates two containers, one for C++ and one for MariaDB. You will be connected to the C++ container, and from within that container the MariabDB container will be available on **`localhost`** port 3305. The MariaDB database has a default password of `mariadb` and you can update MariaDB parameters by updating the `.devcontainer/.env` file.

You can connect to MariaDB from an external tool when connected to the Dev Container from a local tool by updating `.devcontainer/devcontainer.json` as follows:

```json
"forwardPorts": [ "3306" ]
```

Once the MariaDB container has port forwarding enabled, it will be accessible from the Host machine at `localhost:3306`. The [MariaDB Documentation](https://mariadb.com/docs/) has:

1. [An Installation Guide for MySQL](https://mariadb.com/kb/en/mysql-client/), a CLI tool to work with a MariaDB database.
2. [Tips on populating data](https://mariadb.com/kb/en/how-to-quickly-insert-data-into-mariadb/) in the database. 

If needed, you can use `postCreateCommand` to run commands after the container is created, by updating `.devcontainer/devcontainer.json` similar to what follows:

```json
"postCreateCommand": "g++ --version && git --version"
```

### Adding another service

You can add other services to 