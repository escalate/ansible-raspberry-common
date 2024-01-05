[![Tests](https://github.com/escalate/ansible-raspberry-common/actions/workflows/tests.yml/badge.svg?branch=master&event=push)](https://github.com/escalate/ansible-raspberry-common/actions/workflows/tests.yml)

# Ansible Role: Raspberry - Common

An Ansible role that manages basic operating system configuration on Raspberry Pi OS (Debian Bullseye).

## Install

```
$ ansible-galaxy install escalate.common
```

## Role Variables

Please see [defaults/main.yml](https://github.com/escalate/ansible-raspberry-common/blob/master/defaults/main.yml) for a complete list of variables that can be overridden.

## Dependencies

This role relies on the following dependencies:

* Roles: None
* Collections: [requirements.yml](https://github.com/escalate/ansible-raspberry-common/blob/master/requirements.yml)

## Example Playbook

```
- hosts: all
  roles:
    - role: escalate.common
      tags: common
```

## License

MIT
