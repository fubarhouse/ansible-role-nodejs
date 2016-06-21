# Ansible Role: NPM

* Installs NVM (Node Version Manager)
* Installs Node.js (Node Javascript Library)
* Installs IOJS (Variant of Node.js)
* Installs NPM (Node Package Manager)
* Installs an array of NPM packages

## Requirements

  None.

## Role Variables

Default Node version

    node_version: 5.9.1

All Node versions to install

    node_versions:
      - 5.9.1
      - 5.10.1

Node packages to download

    node_packages:
      - { name: backbone }
      - { name: grunt }
      - { name: underscore }
      - { name: yosay }

## Dependencies

  None.

## Example Playbook

    - { role: fubarhouse.npm }

## Installation

  * Add the NPM role to your playbook.
  * Modify above variables as desired.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).