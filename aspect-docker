#!/bin/bash

GUEST_HOME=/home/dealii
# Path to aspect binary inside the container
ASPECT=$GUEST_HOME/aspect/aspect
# Target where the host directory will be mounted
MODELPATH=$GUEST_HOME/model
# Docker image and tag
IMAGE=gassmoeller/aspect
TAG=latest

# Get output directory from the .prm file
OUTPUT_DIR=$(grep -i "set Output directory" $1 | awk '{printf $NF}')

# Run ASPECT
docker run -it -v "$(pwd):$MODELPATH" $IMAGE:$TAG /bin/bash -c "$ASPECT $MODELPATH/$1; cp -r $OUTPUT_DIR $MODELPATH"
