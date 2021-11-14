
# Node.js & Mongo DB (javascript-node-mongo)

Develop applications in Node.js and Mongo DB. Includes Node.js, eslint, and yarn in a container linked to a Mongo DB.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Node.js version (use -bullseye variants on local arm64/Apple Silicon): | string | 18 |

This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/javascript-node ([source](https://github.com/devcontainers/images/tree/main/src/javascript-node))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/javascript-node/.devcontainer/devcontainer.json))

## Using this template

This template creates two containers, one for Node.js and one for MongoDB. You will be connected