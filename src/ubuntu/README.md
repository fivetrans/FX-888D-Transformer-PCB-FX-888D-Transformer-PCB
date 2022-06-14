
# Ubuntu (ubuntu)

A simple Ubuntu container with Git and other common utilities installed.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): | string | jammy |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/base:ubuntu ([source](https://github.com/devcontainers/images/tree/main/src/base-ubuntu))
* **Applies devcontainer.js