

# Kubernetes - Minikube-in-Docker (kubernetes-helm-minikube)

Access an embedded minikube instance or remote a Kubernetes cluster from inside a dev container. Includes kubectl, Helm, minikube, and the Docker.



## Using this template

Dev containers can be useful for all types of applications including those that also deploy into a container based-environment. While you can directly build and run the application inside the dev container you create, you may also want to test it by deploying a built container image into a local minikube or remote [Kubernetes](https://kubernetes.io/) cluster without affecting your dev container.

This example illustrates how you can do this by using CLIs ([kubectl](https://kubernetes.io/docs/reference/kubectl/overview/), [Helm](https://helm.sh), Docker), the [Kubernetes extension](https://marketplace.visualstudio.com/items?itemName=ms-kubernetes-tools.vscode-kubernetes-tools), and the [Docker extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) right from inside your dev container.  This definition builds up from the [docker-in-docker](../docker-in-docker) container definition along with a [minikube](https://minikube.sigs.k8s.io/docs/) installation that can run right inside the container. It installs the Docker and Kubernetes extensions inside the container so you can use its full feature set with your project.