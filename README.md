# Ansible Role: NPM

* Installs NVM (Node Version Manager)
* Installs Node.js (Node Javascript Library)
* Installs NPM (Node Package Manager)
* Installs an array of NPM packages

## Requirements

Requirements are self-contained.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

**Change the default node version to install another version by default.**
default_node_version: 0.12.7

**Change vagrant_user to the user on the system installing the software**
vagrant_user: vagrant

**Add or remove packages to meet your needs**
  npm_packages:<br />
    - backbone<br />
    - grunt<br />
    - underscore<br />
    - yo

## Dependencies

  Dependencies will be installed as part of the provisioning process.

  - git<br />
  - curl<br />
  - build-essential<br />
  - libssl-dev<br />

  ### Notes

  This system was built in mind for DrupalVM.

## Example Playbook

````  - { role: fubarhouse.npm, when: '"npm" in installed_extras' } ````

## Installation

  * Add fubarhouse.npm to your roles list.
  * Override variables in your config.yml as required.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).
Inspired from several role packages created by [Jeff Geerling](https://github.com/geerlingguy/).
