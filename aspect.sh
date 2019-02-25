#!/bin/bash

MODELPATH = "/home/dealii/aspect/model_input"
ASPECT_DOCKER = "gassmoeller/aspect"
TAG = "latest"

# Pull ASPECT docker container
echo "Pulling docker container..."
docker pull $(ASPECT_DOCKER)

# Mount current directory into the docker container
docker run -it -v "$(pwd):$(MODELPATH):ro" $(ASPECT_DOCKER):$(TAG)

# Run the input file with ASPECT
docker run -it "./aspect $(MODELPATH)/#1" $(ASPECT_DOCKER)
