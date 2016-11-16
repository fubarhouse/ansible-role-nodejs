# Ansible Role: NodeJS

[![Build Status](https://travis-ci.org/fubarhouse/ansible-role-nodejs.svg?branch=master)](https://travis-ci.org/fubarhouse/ansible-role-nodejs)

* Installs NVM (Node Version Manager)
* Installs IVM (IOJS Version Manager)
* Does not install IOJS versions unless specified (uses IVM)
* Installs Node.js v4, v5, v6 and v7 (uses NVM - Node Javascript Library)
* Installs IOJS where applicable (Variant of Node.js)
* Installs NPM packages (Node Package Manager)

## Requirements

  None. 

## Role Variables

Note: In order to install legacy IOJS versions, please specify the version number (example: `1.0.0`) in either the node_version as a string or in node_versions as a new array item.

Default Node version
````
node_version: 7.1.0
````

All Node versions to install
````
node_versions:
  - 4.6.1
  - 5.12.0
  - 6.9.1
  - 7.1.0
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