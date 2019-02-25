# Script for running ASPECT inside a Docker container

The script makes easier to run [ASPECT]() installed inside the [gassmoeller/aspect]()
Docker.

In order to run ASPECT with a `model.prm` file as input we should change working
directory to the location of the `model.prm` and then run the `aspect_docker` script
with the `model.prm` file as argument:

    cd <path-to-model.prm>
    ./aspect_docker model.prm

After finished, the output will be inside the parent directory of `model.prm`.
