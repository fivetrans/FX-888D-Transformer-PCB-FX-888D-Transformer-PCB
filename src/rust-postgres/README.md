
# Rust & PostgreSQL (rust-postgres)

Develop applications with Rust and PostgreSQL. Includes a Rust application container and PostgreSQL server.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Debian OS version (use bullseye on local arm64/Apple Silicon): | string | bullseye |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/rust ([source](https://github.com/devcontainers/images/tree/main/src/rust))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/rust/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for Rust and one for PostgreSQL. You will be connected to the Rust container, and from within that container the PostgreSQL container will be available on **`localhost`** port 5432. The default database is named `postgres` with a user of `postgres` whose password is `postgres`, and if desired this may be changed in `.devcontainer/.dev`. Data is stored in a volume named `postgres-data`.

While the template itself works unmodified, it uses the `mcr.microsoft.com/devcontainers/rust` image which includes `git`, a non-root `vscode` user with `sudo` access, and a set of common dependencies and Go tools for development.

You also can connect to PostgreSQL from an external tool when connected to the Dev Contaner from a local tool by updating `.devcontainer/devcontainer.json` as follows:

```json
"forwardPorts": [ "5432" ]
```

Once the PostgreSQL container has port forwarding enabled, it will be accessible from the Host machine at `localhost:5432`. The [PostgreSQL Documentation](https://www.postgresql.org/docs/14/index.htm