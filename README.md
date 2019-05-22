# Ansible Role: NodeJS

[![Build Status](https://img.shields.io/travis/fubarhouse/ansible-role-nodejs/master.svg?style=for-the-badge)](https://travis-ci.org/fubarhouse/ansible-role-nodejs)
[![stability-stable](https://img.shields.io/badge/stability-stable-green.svg?style=for-the-badge)](https://github.com/orangemug/stability-badges)
[![Ansible Nodejs](https://img.shields.io/ansible/role/4921.svg?style=for-the-badge)](https://galaxy.ansible.com/fubarhouse/nodejs)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg?style=for-the-badge)](https://raw.githubusercontent.com/fubarhouse/ansible-role-nodejs/master/LICENSE)

* Installs NVM (Node Version Manager)
* Installs IVM (IOJS Version Manager) when configured
* Installs Node.js v4, v5, v6, v7, v8, v9, v10 and v11 (uses NVM - Node Javascript Library)
* Installs IOJS when configured
* Installs NPM packages (Node Package Manager)

## Requirements

  None. 

## Role Variables

Install NVM dependencies:
````yaml
# By default, NVM dependencies will not install.
# Enable dependency installation using the following:
# NOTE: Installing dependencies does require privilege escalation.
install_nvm_deps: true
````

Default Node version
````yaml
node_version: 12.3.0
````

All Node versions to install
````yaml
node_versions:
  - 4.9.1
  - 5.12.0
  - 6.14.3
  - 7.10.1
  - 8.11.3
  - 9.11.2
  - 10.14.1
  - 11.15.0
````

Node packages to download
````yaml
node_packages:
  - { name: backbone }
  - { name: grunt }
  - { name: underscore }
  - { name: yosay }
````

Note: In order to install IOJS versions via IVM, configure both IVM and IOJS tasks to execute as follows:
````yaml
install_ivm: true
install_iojs: true
node_version: 3.0.0
node_versions:
- 1.0.0
- 2.0.0
````

Note: In order for this role to do what it does, it uses a script which includes the nvm script to make the function available. This is stored as a file which is then executed from the $PATH. You may configure where the file is stored for execution, however the task associated to this is executed by the `root` user.
````yaml
nvm_symlink_dir: /usr/local/bin
````

**Deprecated**

The following variable has been replaced by `nvm_symlink_dir` and will continue to work. Please migrate any non-default declarations of this variable to the folder directory which should contain the symlinks (ie `/usr/local/bin`).

````yaml
# DEPRECATED, migrate to nvm_symlink_dir in the event of failure.
nvm_symlink_exec: /usr/local/bin/nvm
````

## Dependencies

  None.

## Example Playbook
````yaml
- hosts: localhost
  roles:
    - fubarhouse.nodejs
````

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).