## Using this template

Dev containers can be useful for all types of applications including those that also deploy into a container based-environment. While you can directly build and run the application inside the dev container you create, you may also want to test it by deploying a built container image into your local Docker Desktop instance without affecting your dev container.

This example illustrates how you can do this by running CLI commands and using the [Docker VS Code extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) right from inside your dev container. It installs the Docker extension inside the container so you can use its full feature set with your project.

The included `.devcontainer.json` can be altered to work with other Debian/Ubuntu-based container images such as `node` or `python`. For example, 