## Using this template

Dev containers can be useful for all types of applications including those that also deploy into a container based-environment. While you can directly build and run the application inside the dev container you create, you may also want to test it by deploying a built container image into your local Docker Desktop instance without affecting your dev container.

In many cases, the best approach to solve this problem is by bind mounting the docker socket, as demonstrated in [../docker-outside-of-docker](../docker-outside-of-docker). This template demonstrates an alternative technique called "Docker in Docker".

This template's approach creates pure "child" containers by hosting its own instance of th