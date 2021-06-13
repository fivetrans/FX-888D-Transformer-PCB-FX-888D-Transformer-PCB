
# C# (.NET) and MS SQL (dotnet-mssql)

Develop C# and .NET Core based applications. Includes all needed SDKs, extensions, dependencies and an MS SQL container for parallel database development. Adds an additional MS SQL container to the C# (.NET Core) container definition and deploys any .dacpac files from the mssql .devcontainer folder.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | .NET version: | string | 7.0 |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/dotnet ([source](https://github.com/devcontainers/images/tree/main/src/dotnet))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/dotnet/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for C# (.NET) and one for Microsoft SQL Server. You will be connected to the Ubuntu or Debian container, and from within that container the MS SQL container will be available on **`localhos