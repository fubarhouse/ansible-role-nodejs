# Ansible Role: NPM

* Installs NVM (Node Version Manager)
* Installs Node.js (Node Javascript Library)
* Installs IOJS (Variant of Node.js)
* Installs NPM (Node Package Manager)
* Installs an array of NPM packages

## Requirements

  None.

## Role Variables

Copy the defaults/main.yml into the ansible system and add to the playbook, and change the variables accordingly.

  ````

  fubarhouse_npm:
  # Application versions
  nvm_version: 0.31.0
  node_version: 5.9.1
  io_version: 3.3.1
  # Clean install
  clean_install: true
  # Process controls
  install_nvm: true
  install_nodejs: true
  install_iojs: false
  install_npm: true
  # Repositories
  nvm_repo: "https://github.com/xtuple/nvm.git"
  # Symlinks
  nvm_symlink_exec: "/usr/bin/nvm"
  # Install directories
  # nvm_install_dir: "/home/{{ ansible_ssh_user }}/.nvm"
  nvm_install_dir: "/usr/local/nvm"
  # Install paths
  nvm_install_path: ""
  # Executables
  nvm_install_exec: "nvm_bin.sh"
  npm_install_exec: "/usr/local/bin/npm"
  # Packages
  packages:
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
