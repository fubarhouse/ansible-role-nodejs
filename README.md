# Ansible Role: NPM

* Installs NVM (Node Version Manager)
* Installs Node.js (Node Javascript Library)
* Installs IOJS (Variant of Node.js)
* Installs NPM (Node Package Manager)
* Installs an array of NPM packages

## Requirements

  None.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

  ### Clean install
  ````
  fubarhouse_npm.clean_install: false
  ````
  ### Process controls
  ````
  fubarhouse_npm.install_nvm: true
  fubarhouse_npm.install_nodejs: true
  fubarhouse_npm.install_iojs: false
  fubarhouse_npm.install_npm: true
  ````
  ### Repositories
  ````
  fubarhouse_npm.nvm_repo: "https://github.com/xtuple/nvm.git"
  ````
  ### Symlinks
  ````
  fubarhouse_npm.nvm_symlink_exec: "/usr/local/bin/nvm"
  ````
  ### Install directories
  ````
  fubarhouse_npm.nvm_install_dir: "~/.nvm"
  ````
  ### Install paths
  ````
  fubarhouse_npm.nvm_install_path: ""
  ````
  ### Executables
  ````
  fubarhouse_npm.nvm_install_exec: "nvm_bin.sh"
  fubarhouse_npm.npm_install_exec: "/usr/local/bin/npm"
  ````
  ### Application versions
  ````
  fubarhouse_npm.nvm_version: 0.31.0
  fubarhouse_npm.node_version: 5.9.1
  fubarhouse_npm.io_version: 3.3.1
  ````
  ### Packages
  ````
  fubarhouse_npm.packages:
    - { name: backbone }
    - { name: grunt }
    - { name: underscore }
    - { name: yosay }
  ````

## Dependencies

  None.

  ### Notes

  This system was built in mind for DrupalVM.

## Example Playbook

```
  - { role: fubarhouse.npm, when: '"npm" in installed_extras' }
```

## Installation

  * Add fubarhouse.npm to your roles list.
  * Override variables in your config.yml as required with the above structure.

## License

  MIT / BSD

## Author Information

  This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).

  This role was redeveloped in 2016 by [Karl Hepworth](https://twitter.com/fubarhouse).
