# Ansible Role: Compass

Installs any number of NPM packages on RHEL/CentOS and Debian/Ubuntu servers.

## Requirements

Requires `node.js` to be installed on the server.

Recommended to use ansible role fubarhouse.compass to remove dependency issues.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

  npm_packages:<br />
    - backbone<br />
    - grunt<br />
    - underscore<br />
    - yo<br />

## Dependencies

  Node.js

  ### Notes

  This system was built in mind for DrupalVM.
  
  The role fubarhouse.nodejs is currently under development.

## Example Playbook

````  - { role: fubarhouse.npm, when: '"nodejs" in installed_extras' } ````

## Installation

  * Add fubarhouse.nodejs to your roles list.
  * Add fubarhouse.npm to your roles list.
  * Override npm_packages variable in your config.yml as required.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).
Inspired from several role packages created by [Jeff Geerling](https://github.com/geerlingguy/).
