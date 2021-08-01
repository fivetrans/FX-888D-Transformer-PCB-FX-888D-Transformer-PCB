
# C# (.NET) and PostgreSQL (dotnet-postgres)

Develop C# and .NET Core based applications. Includes all needed SDKs, extensions, dependencies and a PostgreSQL container for parallel database development. Adds an additional PostgreSQL container to the C# (.NET Core) container definition.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | .NET version: | string | 7.0 |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/dotnet ([source](https://github.com/devcontainers/images/tree/main/src/dotnet))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/dotnet/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for C# (.NET) and one for PostgreSQL. You will be connected to the .NET container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. By default, the `postgre` user password is `postgre`. 

Default database parameters may be changed in `.devcontainer/docker-compose.yml` file if desired.

You also can connect to PostgreSQL from an external tool when connected to the Dev Container from a local tool by updating `.devcontainer/devcontainer.json`