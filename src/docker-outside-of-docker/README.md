
# Docker outside of Docker (docker-outside-of-docker)

Access your host's Docker install from inside a dev container. Installs Docker extension in the container along with needed CLIs.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| installZsh | Install ZSH!? | boolean | true |
| upgradePackages | Upgrade OS packages? | boolean | false |
| dockerVersion | Select or enter a Docker/Moby CLI version. (Availability can vary by OS version.) | string | latest |
| moby | Install OSS Moby build instead of Docker CE | boolean | true |
| enableNonRootDocker | Enable non-root Docker access in container? | boolean | true |

## Using this template

Dev containers can be useful for all types of applications including those that also deploy into a container based-environment. While you can directly build and run the application inside the dev container you create, you may also want to test it by deplo