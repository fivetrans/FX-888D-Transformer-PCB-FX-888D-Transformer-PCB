
# Default Linux Universal (universal)

Use or extend the new Ubuntu-based default, large, multi-language universal container for GitHub Codespaces.



This template references an image that was [pre-built](https://containers.dev/implementors/reference/#prebuilding) to automatically include needed devcontainer.json metadata.

* **Image**: mcr.microsoft.com/devcontainers/universal ([source](https://github.com/devcontainers/images/tree/main/src/universal))
* **Applies devcontainer.json contents from image**: Yes ([source](https://github.com/devcontainers/images/blob/main/src/universal/.devcontainer/devcontainer.json))

## Using Conda

This dev container and its associated image includes [the `conda` package manager](https://aka.ms/vscode-remote/conda/about). Additional packages installed using Conda will be downloaded from Anaconda or another repository if you configure one. To reconfigure Conda in this conta