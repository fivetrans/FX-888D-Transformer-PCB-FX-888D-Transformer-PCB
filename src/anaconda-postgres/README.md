
# Anaconda (Python 3) & PostgreSQL (anaconda-postgres)

Develop Anaconda & PostgreSQL applications in Python3. Installs dependencies from your environment.yml file and the Python extension.



This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/cpp ([source](https://github.com/devcontainers/images/tree/main/src/cpp))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/cpp/.devcontainer/devcontainer.json))


## Using this template

This template creates two containers, one for Anaconda and one for PostgreSQL. You will be connected to the Anaconda container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. The default database is named `postgres` with a user of `postgres` whose password is `postgres`, and if desired this may be changed in `.devcontainer/.env`. Data is stored in a volume named `postgres-data`.

While the template itself works unmodified, it uses the `mcr.microsoft.com/devcontainers/anaconda` image which includes `git`, a non-root `vscode` user with `sudo` access, and a set of common dependencies and Python tools for development.

You also can connect to PostgreSQL from an external tool when connecting to the Dev Container from a local tool by updating `.devcontainer/devcontainer.json` as follows:

```json
"forwardPorts": [ "5432" ]
```

Once the PostgreSQL container has port forwarding enabled, it will be accessible from the Host machine at `localhost:5432`. The [PostgreSQL Documentation](https://www.postgresql.org/docs/14/index.html) has:

1. [An Installation Guide for PSQL](https://www.postgresql.org/docs/14/installation.html) a CLI tool to work with a PostgreSQL database.
2. [Tips on populating data](https://www.postgresql.org/docs/14/populate.html) in the database. 

### Adding another service

You can add other services to your `docker-compose.yml` file [as described in Docker's documentation](https://docs.docker.com/compose/compose-file/#service-configuration-reference). However, if you want anything running in this service to be available in the container on localhost, or want to forward the service locally, be sure to add this line to the service config:

```yaml
# Runs the service on the same network as the database container, allows "forwardPorts" in devcontainer.json function.
network_mode: service:[$SERVICE_NAME]
```

### Using Conda

This dev container and its associated anaconda image includes [the `conda` package manager](https://aka.ms/