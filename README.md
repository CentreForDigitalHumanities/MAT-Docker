# MITRE Annototion Tool Docker
This repo contains a Docker container to fiddle around with [MITRE Annotation Tool](http://mat-annotation.sourceforge.net/) (a.k.a MAT). It is basically an Ubuntu 18.04 OS, onto which MATs dependencies are installed.

## Prerequisites
The rest of the README assumes that you [have Docker installed](https://docs.docker.com/get-docker/). In addition, it assumes you have this repo cloned. 

## Setup
### Download MAT
This Vagrant box needs you to download MAT, unzip it, and put it in the correct directory. So, head over to [MATs download page](https://sourceforge.net/projects/mat-annotation/files/) and download the latest version.

Next, unzip the file you downloaded into a folder with the name `MAT` at the repo's root folder.

Once this is done, your repo's root folder should look like this:

```
MAT
   |
   └─── build
   └─── external
   └─── source
   └─── static_doc
   install.sh
   install.py
   ...
Dockerfile
...
```

### Build the container
Once you have this structure, open a terminal in the repo's root folder and run:
```
docker build -t mat .
```

This will take several minutes.

### Run the container
After the container is built, it can be started:
```
docker run -p 7801:7801 -it mat
```
This will start the container and place you on a command line in the MAT home directory.
The `-p 7801:7801` flag ensures you can access the web application in the container on your local network, and the `-it` flag runs an interactive session, allowing you to input commands.

## Getting started
The MAT release you just downloaded contains extensive documentation. You can view this documentation without needing the Docker container. Just navigate into the `MAT` folder and open `readme.html` with your browser.

In the documentation you will find a number of tutorials. When `docker build` is finished, you will be ready for `Step 2` of tutorial 1.

The tutorials refer to `$MAT_PKG_HOME`. This is the path from which you need to run some commands. On the Docker container, `$MAT_PKG_HOME` is:

``` 
/app/MAT/src/MAT/
```
Note that you will be situated in this directory when you launch the Docker container.

So, when `docker build` is done, launch into the container (if you did not do so previously):
```
docker run -p 7801:7801 -it mat
```
Here you can execute the commands mentioned in the tutorials. 

## Launch MAT
Tutorial 1, Step 2 explains how to launch MAT's web interface. Navigate to MATs home folder (see above) and run the following command:

```
bin/MATWeb
```

Now you can open your browser and go to `localhost:7801/MAT/workbench`

## Next steps
From this point, you can follow along with the tutorials. Remember that `$MAT_PKG_HOME` is equivalent to `/app/MAT/src/MAT/` and you should be fine!
