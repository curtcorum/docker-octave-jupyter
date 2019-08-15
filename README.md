# docker-octave-jupyter

Docker image that wraps the gnu/octave docker image to add a jupyter server.

Installing or building octave is not graceful on MacOS, and can have many requirements on gnu/linux. This is a simple way to get not only octave up and running, but also a nice Jupyter environment for developing with it.

## Quickstart

### Running the environment

The environment can be rapidly spun up with this directory mounted by running:

`make up`

And brought down again with

`make down`

When the environment is started, a token and url will be generated and logged to the console allowing connection to the environment through the browser.

### Running with a different mounted directory

Hop over to the directory you wish to mount and run:

`docker run -it -p 8888:8888 -v $(pwd):/code xxxxxxxxxxx/octave-jupyter:latest`

Alternatively, replace the $(pwd) with the full path to the target directory.

### Building

If you do not wish to pull the image from dockerhub and instead build it yourself, simply run:

`make build`

to build with the image name as defined in docker-compose.yaml

Alternatively, run `docker build` with custom arguments to configure the image as desired.

*Footnote: xxxxxxxxxxx is my actual dockerhub username. You do not need to replace this in order to pull the images.*
