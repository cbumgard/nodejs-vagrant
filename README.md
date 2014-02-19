# nodejs-vagrant

Provisions a clean Ubuntu 12.04 32-bit server instance with all needed Node.js development tools (Node.js, git, vim); services (MongoDB, Redis, GitHub, Heroku, Travis-CI).

## Setup

### Install vagrant: 
[http://vagrantup.com](http://vagrantup.com)

### Install VirtualBox:
[https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

### Install Git & GitHub SSH Keys:

Install Git: [http://git-scm.com/download/](http://git-scm.com/download/)

Generate ssh keys: [https://help.github.com/articles/generating-ssh-keys](https://help.github.com/articles/generating-ssh-keys)

### Provision your box:

Clone this repository: ```git clone git@github.com:cbumgard/nodejs-vagrant.git```

From within the ./nodejs-vagrant repo ```cd nodejs-vagrant```

Run ```vagrant up``` to provision new box. __Note you do not need to use --no-provision argument as this box tracks when it has been fully provisioned and will not attempt to re-provision.__

Then ```vagrant ssh``` to connect to box

Done! 

__By default the ```vagrant``` user is configured with password 'vagrant'.__

### Edit code on host machine, build in VM

Your ```~/``` home directory on your host machine is synced to the ```/host/``` directory inside of Vagrant. So for example you can edit code in ```~/code/``` on your laptop and build it inside a Vagrant shell inside ```/host/code```.

### CLI commands 

__Important__: Read the [available commands](http://docs.vagrantup.com/v2/cli/index.html) for vagrant. 

### Configure networking:

Configured for private network on static IP: ```192.168.33.10```

Append to your /etc/hosts file for convenience:

```192.168.33.10   vagrant.localhost```

### Errors

Included is a script ```./sh/repair-mac.sh``` that fixes the problem that occurs (usually after a forced reboot) where the following error shows up on 'vagrant up':

```bash
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.

Command: ["hostonlyif", "create"]

Stderr: 0%...
Progress state: NS_ERROR_FAILURE
VBoxManage: error: Failed to create the host-only adapter
VBoxManage: error: VBoxNetAdpCtl: Error while adding new interface: failed to open /dev/vboxnetctl: No such file or directory
VBoxManage: error: Details: code NS_ERROR_FAILURE (0x80004005), component HostNetworkInterface, interface IHostNetworkInterface
VBoxManage: error: Context: "int handleCreate(HandlerArg*, int, int*)" at line 66 of file VBoxManageHostonly.cpp
```

## Services

### MongoDB & Redis

Verify from CLI by running ```mongo``` and ```redis-cli```.

### GitHub

```
ssh-keygen -t rsa
(Copy the contents of ~/.ssh/id_rsa.pub into your GitHub account: https://github.com/settings/ssh)
git config --global user.name '<your name>'
git config --global user.email <your email>
```

### Heroku

```
Run the following commands to finish setting up Heroku:
heroku login
heroku keys:add
```

### Travis-CI

```travis login```
or
```travis login --pro```