#!/bin/bash -eux

# Add vagrant user to sudoers.
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Disable daily apt unattended updates.
echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic

sudo apt-get update
sudo apt-get install -y virtualbox-guest-additions-iso
sudo apt-get install -y virtualbox-guest-utils
sudo apt-get install -y mc
