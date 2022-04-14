#!/bin/bash

docker build --pull --no-cache -f Dockerfile.novnc --build-arg BASE_IMAGE=ubuntu:20.04 -t irslrepo/novnc:20.04 .
