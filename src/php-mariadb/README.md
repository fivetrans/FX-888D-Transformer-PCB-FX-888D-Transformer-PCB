
# PHP & MariaDB (php-mariadb)

Develop PHP applications with MariaDB (MySQL Compatible).

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | PHP version (use -bullseye variants on local arm64/Apple Silicon): | string | 8.2 |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/php ([source](https://github.com/devcontainers/images/tree/main/src/php))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/php/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for PHP and one for MariaDB. You will be connected to the PHP container, and from within that container the MariabDB container will be available on **`localhost`** port 3305. The MariaDB database has a default password of `mariadb` and you can update MariaDB parameters by updating the `.devcontainer/docker-compose.yml` file.

While the template itself works unmodified, it uses the `mcr.microsoft.com/devcontainers/php` image which includes `git`, a non-ro