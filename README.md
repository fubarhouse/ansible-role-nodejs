# Ansible Role: NPM

[![Build Status](https://travis-ci.org/fubarhouse/ansible-role-nodejs.svg?branch=master)](https://travis-ci.org/fubarhouse/ansible-role-nodejs)

* Installs NVM (Node Version Manager)
* Installs Node.js v4, v5, v6 and v7 (Node Javascript Library)
* Installs IOJS where applicable (Variant of Node.js)
* Installs NPM packages (Node Package Manager)

### Support

* Designed for usage on Ubuntu systems
* Tested on Darwin (MacOSX), Debian and RedHat distributions.

## Requirements

  None. 

## Role Variables

Default Node version
````
node_version: 7.0.0
````

All Node versions to install
````
node_versions:
  - 4.6.1
  - 5.12.0
  - 6.9.1
  - 7.0.0
````
Node packages to download
````
node_packages:
  - { name: backbone }
  - { name: grunt }
  - { name: underscore }
  - { name: yosay }
````
## Dependencies

  None.

## Example Playbook
````
- hosts: localhost
  roles:
    - fubarhouse.nodejs
````

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).