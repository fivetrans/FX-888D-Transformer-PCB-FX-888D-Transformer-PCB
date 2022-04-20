This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/ruby ([source](https://github.com/devcontainers/images/tree/main/src/ruby))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/ruby/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for Ruby and one for PostgreSQL. You will be connected to the Ruby container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. The default database is named `postgres` with a user of `postgres` whose password is `postgres`, and if desired this may be changed in `.devcontainer/docker-compose.yml`. Data is stored in a volume named `postgres-data`.

While the template itself works unmodified, it uses the `mcr.microsoft.com/devcontainers/ruby` image which includes `git`, a non-root `vscode` user