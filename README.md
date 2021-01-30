# Ansible Role: Raspberry - Common

[![CI](https://github.com/escalate/ansible-raspberry-common/workflows/CI/badge.svg?event=push)](https://github.com/escalate/ansible-raspberry-common/actions?query=workflow%3ACI)

An Ansible role that manages basic operating system configuration on Raspberry Pi OS.

## Install

```
$ ansible-galaxy install escalate.raspberry-common
```

## Role Variables

Please see [defaults/main.yml](https://github.com/escalate/ansible-raspberry-common/blob/master/defaults/main.yml) for a complete list of variables that can be overridden.

## Dependencies

Required Ansible collections are documented in [meta/collection_requirements.yml](https://github.com/escalate/ansible-raspberry-common/blob/master/meta/collection_requirements.yml).

## Example Playbook

```
- hosts: all
  roles:
    - role: escalate.raspberry-common
      tags: common
```

## License

MIT
