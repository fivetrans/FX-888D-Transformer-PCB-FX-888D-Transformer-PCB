#!/bin/bash -i

# Copies localhost's ~/.kube/config file into the container and swap out localhost
# for host.docker.internal whenever a new shell starts