# Ansible Role: NodeJS

[![Build Status](https://travis-ci.org/fubarhouse/ansible-role-nodejs.svg?branch=master)](https://travis-ci.org/fubarhouse/ansible-role-nodejs)

* Installs NVM (Node Version Manager)
* Installs IVM (IOJS Version Manager) when configured
* Installs Node.js v4, v5, v6 and v7 (uses NVM - Node Javascript Library)
* Installs IOJS when configured
* Installs NPM packages (Node Package Manager)

## Requirements

  None. 

## Role Variables

Default Node version
````
node_version: 7.9.0
````

All Node versions to install
````
node_versions:
  - 4.8.2
  - 5.12.0
  - 6.10.2
  - 7.9.0
````

Node packages to download
````
node_packages:
  - { name: backbone }
  - { name: grunt }
  - { name: underscore }
  - { name: yosay }
````

Note: In order to install IOJS versions via IVM, configure both IVM and IOJS tasks to execute as follows:
````
install_ivm: true
install_iojs: true
node_version: 3.0.0
node_versions:
- 1.0.0
- 2.0.0

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