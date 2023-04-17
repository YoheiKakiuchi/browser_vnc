#!/bin/bash

# REPO=irslrepo/
REPO=repo.irsl.eiiris.tut.ac.jp/
# UBUNTU_VER=22.04
UBUNTU_VER=20.04

docker build --pull --no-cache -f Dockerfile.novnc --build-arg BASE_IMAGE=ubuntu:${UBUNTU_VER} -t ${REPO}browser_vnc:${UBUNTU_VER} .
