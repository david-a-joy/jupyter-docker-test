#!/bin/bash

set -e
set -o nounset

docker build -t jupyter-docker-test .
