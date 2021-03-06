# DjangoDev

This repository contains a comprehensive set of tools for getting started with computational linguistics for use in a django development server.

## Contributors:

* Dax Gerts

## DjangoDev Box Overview

The following process will allow you to easily setup and run Ipython Notebooks in your browser without having to make a lot of permanent changes to your computer. This is accomplished by creating a "virtual machine" which runs on its own partioned section of your computer. The use of Vagrant allows this machine to be created from prepared files found in this repository and with a minimum of individual effort. Additionaly, a vagrant machine can be stopped, destroyed, and recreated at any given time.

## Installationa and Setup

This process will take a few minutes and requires a good internet connection.

### 1. Install VirtualBox

Download and install VirtualBox [here](https://www.virtualbox.org/wiki/Downloads)

### 2. Install Vagrant

Download and install Vagrant [here](https://www.vagrantup.com/downloads.html)

### 3. Download 'DjangoDev' Repository (Optionally: Use Git)
 
Installing Git on your host machine is completely optional, but it can make things a little simpler if you're willing to work with the command line/terminal. Choose one of the following:

1. Use git to download the 'DjangoDev' Repository: (preferred)
 * Download and install Git [here](https://git-scm.com/downloads)
 * Open command line/terminal and navigate to where you'd like to store your vagrant box.
   * Mac/Linux:```cd ~/Desktop```
    * Windows: ```cd C:\Users\your-username\Desktop```
 * Use ```git clone https://github.com/SlightlyUnorthodox/DjangoDev.git``` to create a local copy of the repository

2. Download the 'DjangoDev' Repository directly:
 * Download the zipfile [here](https://github.com/SlightlyUnorthodox/DjangoDev/archive/master.zip)
 * Unzip the file where you'd like to store your vagrant box.


### 4. Run Vagrant setup

This process will likely take several minutes when run for the first time, but will be significantly faster if ever needed again. Feel free to grab a cup of coffee while this completes.

What your computer is doing here:
 * Creating a virtual machine in your computer
 * Downloading and installing Ubuntu
 * Installing Git, Python, NLTK, and Django
 * Starting the Django server and forwarding that to the host machine at '127.0.0.1:8000'

#### Mac & Linux

Open the terminal using 

```{bash}
  cd ~/desktop/DjangoDev
  vagrant plugin install vagrant-hostsupdater
  vagrant plugin install vagrant-triggers
  vagrant up
```

[More info on Mac termainal](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line)

#### Windows
```{cmd}
  cd ~\Desktop\DjangoDev
  vagrant plugin install vagrant-hostsupdater
  vagrant up
```

[More info on Windows command prompt](http://www.bleepingcomputer.com/tutorials/windows-command-prompt-introduction/)

## Access Django Server

If it is running, the Django server can be accessed from the ['http://djangodev:8000'](http://djangodev:8000)

To start Django in your development box, run the command 'sudo python manage.py runserver 0.0.0.0:8000' from the Django project directory.

## Access Your Vagrant Box Directly

#### Mac & Linux
```{bash}
  cd ~/desktop/DjangoDev
  vagrant ssh
```

[More info on Mac termainal](http://blog.teamtreehouse.com/introduction-to-the-mac-os-x-command-line)

#### Windows

On Windows, you'll likely need to use Putty to access your vagrant box.

* Hosname: localhost
* Port: 22
* Username: vagrant
* Password: vagrant

## Check for Updates

```{bash}
  vagrant reload --provision
```

## More Info

If you're interested in learning more ways to use Vagrant, please read the tutorials [here](https://www.vagrantup.com/docs/getting-started/)
