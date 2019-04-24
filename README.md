# ASPECT & Docker script

The script makes easier to run [`ASPECT`](https://aspect.geodynamics.org/) installed
inside the [`gassmoeller/aspect`](https://github.com/gassmoeller/aspect) Docker
container.


## Requirementes

You need to install [Docker](https://www.docker.com/) in order to run the script.

Please remember to enable the docker kernel module to able to use it.

In order to check if Docker is running correctly, please run:

    docker hello-world


### Docker installation example: Manjaro

    sudo pacman -S docker
    
    sudo systemctl enable docker
    
    sudo systemctl start docker
    


I don't recommend running this (or any) script as `root` unless is strictly necessary, so it would be better
to grant your user with the necessary privileges to run `docker`. Please read the [Post-installation steps for Linux](https://docs.docker.com/install/linux/linux-postinstall/) to get more information.

**WARNING: The docker group grants privileges equivalent to the `root` user. This can
impact your system's security. Please see the [Post-installation steps for
Linux](https://docs.docker.com/install/linux/linux-postinstall/) to get more information
about this.**

Create the docker group:

    sudo groupadd docker

Add your user to the docker group:

    sudo usermod -aG docker $USER

Logout and login again. Then test if your user has permissions to run Docker:

    docker hello-world
 

Pull the docker:

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
