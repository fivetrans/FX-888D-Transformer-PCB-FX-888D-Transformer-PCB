
# Go & PostgreSQL (go-postgres)

Use and develop Go + Postgres applications. Includes appropriate runtime args, Go, common tools, extensions, and dependencies.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Go version (use -bullseye variants on local arm64/Apple Silicon): | string | 1-bullseye |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/go ([source](https://github.com/devcontainers/images/tree/main/src/go))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/go/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for Go and one for PostgreSQL. You will be connected to the Go container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. The default database is named `postgres` with a user of `postgres` whose password is `postgres`, and if desired this may be changed in `.devcontainer/.env`. Data is stored in a volume named `postgres-data`.

While the template itself works unmodified, it uses the `mcr.microsoft.com/devcontainers/go` image which includes `git`, a non-root `vscode` user with `sudo` access, and a set of common dependencies and Go tools for development.

You also can connect to PostgreSQL from an external tool when connected to the Dev Contaner from a local tool by updating `.devcontainer/d