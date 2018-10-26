# MITRE Annototion Tool Vagrant
This repo contains a Vagrant box to fiddle around with [MITRE Annotation Tool](http://mat-annotation.sourceforge.net/) (a.k.a MAT). It is basically an Ubuntu 18.04 OS, onto which MATs dependencies are installed.

## Prerequisites
The rest of the README assumes that you have Vagrant installed. In addition, it assumes you have this repo cloned. 

## Setup
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
   (etc)
setup.sh
Vagrantfile
```

Once you have this structure, open a terminal in the repo's root folder and run `vagrant up`. This will take several minutes.

## Getting started
The MAT release you just downloaded contains extensive documentation. You can view this documentation without needing the Vagrant. Just navigate into the `MAT` folder and open `readme.html` with your browser.

In the documentation you will find a number of tutorials. When `vagrant up` is finished, you will be ready for `Step 2` of tutorial 1.

The tutorials refer to `$MAT_PKG_HOME`. This is the path from which you need to run some commands. On the Vagrant, `$MAT_PKG_HOME` is:

``` 
/MAT/src/MAT/
```

So, when `vagrant up` is done, `ssh` into the VM:

```
vagrant ssh
```

and navigate to MAT's home folder:

```
cd /MAT/src/MAT/
```

Here you can execute the commands mentioned in the tutorials. 

## Launch MAT
Tutorial 1, Step 2 explains how to launch MAT's web interface. Navigate to MATs home folder (see above) and run the following command:

```
bin/MATWeb
```

Now you can open your browser and go to `localhost:7801/MAT/workbench`

## Next steps
From this point, you can follow along with the tutorials. Remember that `$MAT_PKG_HOME` is equivalent to `/MAT/src/MAT/` and you should be fine!
