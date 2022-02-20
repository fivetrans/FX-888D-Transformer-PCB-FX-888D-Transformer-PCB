
# PHP (php)

Develop PHP based applications. Includes needed tools, extensions, and dependencies.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | PHP version (use -bullseye variants on local arm64/Apple Silicon): | string | 8.2 |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/php ([source](https://github.com/devcontainers/images/tree/main/src/php))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/php/.devcontainer/devcontainer.json))

## Starting / stopping Apache

This dev container includes Apache in addition to the PHP CLI. While you can use PHP's