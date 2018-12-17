#!/bin/bash

set -e
set -o nounset

# -p - Map 8888 from guest to host
# -e - Run jupyter lab
# -v - Map the current working directory to the "work" folder
docker run -it --rm \
  -p 8888:8888 \
  -e JUPYTER_ENABLE_LAB=yes \
  -v "$PWD/work":/home/jovyan/work \
  jupyter-docker-test start.sh jupyter lab
