#!/usr/bin/env bash

echo -e "Building k4a_rospy_tutorial:lastest image"

DOCKER_BUILDKIT=1 \
docker build --pull --rm -f ./.docker/Dockerfile \
--build-arg BUILDKIT_INLINE_CACHE=1 \
--target bash \
--tag k4a_rospy_tutorial:latest .