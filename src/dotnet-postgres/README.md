
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

You also can connect to PostgreSQL from an external tool when connected to the Dev Container from a local tool by updating `.devcontainer/devcontainer.json` as follows:

```json
"forwardPorts": [ "5432" ]
```

Once the PostgreSQL container has port forwarding enabled, it will be accessible from the Host machine at `localhost:5432`. The [PostgreSQL Documentation](https://www.postgresql.org/docs/14/index.html) has:

1. [An Installation Guide for PSQL](https://www.postgresql.org/docs/14/installation.html) a CLI tool to work with a PostgreSQL database.
2. [Tips on populating data](https://www.postgresql.org/docs/14/populate.html) in the database. 

### Adding another service

You can add other services to your `.devcontainer/docker-compose.yml` file [as described in Docker's documentation](https://docs.docker.com/compose/compose-file/#service-configuration-reference). However, if you want anything running in this service to be available in the container on localhost, or want to forward the service locally, be sure to add this line to the service config:

```yaml
# Runs the service on the same network as the data