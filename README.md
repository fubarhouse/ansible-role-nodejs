# Ansible Role: NPM

* Installs NVM (Node Version Manager)
* Installs Node.js (Node Javascript Library)
* Installs NPM (Node Package Manager)
* Installs an array of NPM packages

## Requirements

Requirements are self-contained.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

**Change the default NVM version.**

default_nvm_version: 0.26.1

**Change the default Node.js version.**

default_node_version: 0.12.7

**Change the default IO.JS version.**

default_io_version: 3.2.0

**Default username**

vagrant_user: vagrant

**Default NPM packages to install**

```  npm_packages:
    - backbone
    - grunt
    - underscore
    - yo ```

## Dependencies

  Dependencies will be installed as part of the provisioning process.

```  - git
  - curl
  - build-essential
  - libssl-dev```

  ### Notes

  This system was built in mind for DrupalVM.

## Example Playbook

```  - { role: fubarhouse.npm, when: '"npm" in installed_extras' } ```

## Installation

  * Add fubarhouse.npm to your roles list.
  * Override variables in your config.yml as required.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).

Inspired from several role packages created by [Jeff Geerling](https://github.com/geerlingguy/).
