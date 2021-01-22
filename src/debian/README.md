
# Debian (debian)

Simple Debian container with Git installed.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Debian version (use bullseye on local arm64/Apple Silicon): | string | bullseye |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/base:debian ([source](https://github.com/devcontainers/images/tree/main/src/base-debian))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcont