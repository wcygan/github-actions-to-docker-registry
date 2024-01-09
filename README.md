# Github Actions to Docker Registry

This example shows how to use [Github Actions](https://github.com/features/actions) to build and push a Docker image to a [Docker registry](https://hub.docker.com/).

## Why?

I'm trying to deploy an application onto a [Kubernetes](https://kubernetes.io/) cluster. The application consists of several different binaries / containers. Each of the services has a configuration that specifies where to pull the container image from.