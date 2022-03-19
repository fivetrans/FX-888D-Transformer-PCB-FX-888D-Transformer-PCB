
# Python 3 & PostgreSQL (postgres)

Develop applications with Python 3 and PostgreSQL. Includes a Python application container and PostgreSQL server.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Python version (use -bullseye variants on local arm64/Apple Silicon): | string | 3.11 |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/python ([source](https://github.com/devcontainers/images/tree/main/src/python))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/python/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for Python and one for PostgreSQL. You will be connected to the Python container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. The default database is named `post