#!/bin/bash

# This script fixes the problem that occurs (usually after a forced reboot) where
# the following error shows up on 'vagrant up':

#There was an error while executing `VBoxManage`, a CLI used by Vagrant
#for controlling VirtualBox. The command and stderr is shown below.
#
#Command: ["hostonlyif", "create"]
#
#Stderr: 0%...
#Progress state: NS_ERROR_FAILURE
#VBoxManage: error: Failed to create the host-only adapter
#VBoxManage: error: VBoxNetAdpCtl: Error while adding new interface: failed to open /dev/vboxnetctl: No such file or directory
#VBoxManage: error: Details: code NS_ERROR_FAILURE (0x80004005), component HostNetworkInterface, interface IHostNetworkInterface
#VBoxManage: error: Context: "int handleCreate(HandlerArg*, int, int*)" at line 66 of file VBoxManageHostonly.cpp

sudo launchctl load /Library/LaunchDaemons/org.virtualbox.startup.plist
