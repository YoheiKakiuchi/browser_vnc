#!/bin/bash

docker build --pull --no-cache -f Dockerfile.novnc --build-arg BASE_IMAGE=ubuntu:20.04 -t irslrepo/browser_vnc:20.04 .
