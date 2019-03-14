# ASPECT & Docker script

The script makes easier to run [`ASPECT`](https://aspect.geodynamics.org/) installed
inside the [`gassmoeller/aspect`](https://github.com/gassmoeller/aspect) Docker
container.


## Requirementes

### installation

You need to install [Docker](https://www.docker.com/) in order to run the script.

If you have [Manjaro](https://manjaro.org/) distribution, the installation steps are:

Install docker:

    sudo pacman -S docker
    
Enable the kernel module in each boot and run the kernel module:

    sudo systemctl enable docker
    
    sudo systemctl start docker
    
Test the docker:

    sudo docker hello-world

### Docker group

It is necessary to create the docker group and add your user.

I don't recommend running this (or any) script as `root`, so it would be better
to grant your user with the necessary privileges to run `docker`.

**WARNING: The docker group grants privileges equivalent to the `root` user. This can
impact your system's security. Please see the [Post-installation steps for
Linux](https://docs.docker.com/install/linux/linux-postinstall/) to get more information
about this.**

Create the docker group:

    sudo groupadd docker

Add your user to the docker group:

    sudo usermod -aG docker $USER

Test:

    docker hello-world
 

### Pull the docker

Pull the [ASPECT docker](https://hub.docker.com/r/gassmoeller/aspect/):

    docker pull gassmoeller/aspect


## Usage

First, clone the repo with:

    git clone https://www.github.com/santisoler/aspect-docker

Then navigate to the recently created directory:

    cd aspect-docker

There you will find the `aspect-docker` executable script.
Copy the file to the directory where your `.prm` file is located and navigate there:

    cp aspect-docker /path/to/model/
    cd /path/to/model

Then you can run `ASPECT` with just the following line:

    ./aspect-docker my-model.prm

After finished, the output will be inside the parent directory of the `.prm` file.
