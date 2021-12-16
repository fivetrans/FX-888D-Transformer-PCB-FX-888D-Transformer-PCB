## Using this template

> **Note:** If you would prefer to not set up Kubernetes locally or are using a cloud-based environment, you may find the [Kubernetes - Minikube-in-Docker](../kubernetes-helm-minikube) definition more interesting.

Dev containers can be useful for all types of applications including those that also deploy into a container based-environment. While you can directly build and run the application inside the dev container you create, you may also want to test it by deploying a built container image into a local minikube or remote [Kubernetes](https://kubernetes.io/) cluster without affecting your dev container.

The included `.devcontainer.json` can be altered to work with other Debian/Ubuntu-based co