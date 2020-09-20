
# Anaconda (Python 3) & PostgreSQL (anaconda-postgres)

Develop Anaconda & PostgreSQL applications in Python3. Installs dependencies from your environment.yml file and the Python extension.



This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/cpp ([source](https://github.com/devcontainers/images/tree/main/src/cpp))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/cpp/.devcontainer/devcontainer.json))


## Using this template

This template creates two containers, one for Anaconda and one for PostgreSQL. You will be connected to the Anaconda container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. The default database is named `postgres` with a user of `postgres` whose password is `postgres`, and if desired this may be changed in 