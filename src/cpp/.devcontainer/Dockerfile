FROM mcr.microsoft.com/devcontainers/cpp:0-${templateOption:imageVariant}

ARG REINSTALL_CMAKE_VERSION_FROM_SOURCE="${templateOption:reinstallCmakeVersionFromSource}"

# Optionally install the cmake for vcpkg
COPY ./reinstall-cmake.sh /tmp/

RUN if [ "${REINSTA