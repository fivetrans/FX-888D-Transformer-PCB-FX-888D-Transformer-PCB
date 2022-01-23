This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/miniconda ([source](https://github.com/devcontainers/images/tree/main/src/miniconda))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/miniconda/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for Miniconda and one for PostgreSQL. You will be connected to the Miniconda container, and from within that container the PostgreSQL container will be available on **`localhost`**