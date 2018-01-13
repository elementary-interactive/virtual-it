# Virtual.IT #
This tool is for creating virtual machine box file with HashiCorp's [Packer](https://www.packer.io).
  - [Vagrant](https://www.vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/)

## Available Boxes ##

### Web Development Box ###
This box is for web development to be easy to build web projects with nginx, MySQL and PHP.

For more information, [click here](www.md)

## How to use? ##
It's ease to use with ```packer build``` command.

Example:
```
packer build
  -var "version={version}"
  web.virtual.it.json
```
...will generate a box under the ``builds`` folder, like ``web.virtual.it-elementray_{version}.box``