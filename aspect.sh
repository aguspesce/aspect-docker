#!/bin/bash

MODELPATH = "/home/dealii/aspect/model_input"
IMAGE = "gassmoeller/aspect"
TAG = "latest"

# Pull ASPECT docker container
echo "Pulling docker container..."
docker pull $(IMAGE)

# Mount current directory into the docker container
docker run -it -v "$(pwd):$(MODELPATH):ro" $(IMAGE):$(TAG)

# Run the input file with ASPECT
docker run -it "./aspect $(MODELPATH)/#1" $(IMAGE)
