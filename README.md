# Ansible Role: Compass

Installs Compass on RHEL/CentOS and Debian/Ubuntu servers.

## Requirements

Requires `aptitude` to be installed on the server.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

  compass_gems:<br />
    - bundler<br />
    - sass<br />
    - compass<br />

## Dependencies

  none

## Example Playbook

````  - { role: fubarhouse.compass, when: '"compass" in installed_extras' } ````

## Installation

  * Add "compass" to the installed_extras variable in your config.yml file to use this role with the playbook example above.
  * Override compass_gems variable in your config.yml as required.

## License

MIT / BSD

## Author Information

This role was created in 2015 by [Karl Hepworth](https://twitter.com/fubarhouse).
Inspired from several role packages created by [Jeff Geerling](https://github.com/geerlingguy/) and the unavailability of similar packages.
