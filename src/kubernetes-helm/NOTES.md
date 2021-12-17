## Using this template

> **Note:** If you would prefer to not set up Kubernetes locally or are using a cloud-based environment, you may find the [Kubernetes - Minikube-in-Docker](../kubernetes-helm-minikube) definition more interesting.

Dev containers can be useful for all types of applications including those that also deploy into a container based-environment. While you can directly build and run the application inside the dev container you create, you may also want to test it by deploying a built container image into a local minikube or remote [Kubernetes](https://kubernetes.io/) cluster without affecting your dev container.

The included `.devcontainer.json` can be altered to work with other Debian/Ubuntu-based container images such as `node` or `python`. For example, to use `mcr.microsoft.com/devcontainers/javascript-node`, update the `image` proprty as follows:

```json
"image": "mcr.microsoft.com/devcontainers/javascript-node:18"
```


## A note on Minikube or otherwise using a local cluster

While this definition works with Minikube in most cases, if you hit trouble, make sure that your `~/.kube/config` file and Minikube certs reference your host's IP rather than `127.0.0.1` or `localhost` (since `localhost` resolve to the container itself rather than your local machine where Minikube is running).

This should happen by default on Linux. On macOS an