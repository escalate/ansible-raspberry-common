# Ansible Role: common

An Ansible role that manages basic common configuration settings on Raspberry Pi OS and Debian based systems.

## Install

```
$ ansible-galaxy install escalate.common
```

## Role Variables

Please see [defaults/main.yml](https://github.com/escalate/ansible-common/blob/master/defaults/main.yml) for a complete list of variables that can be overridden.

## Example Playbook

```
- hosts: all
  roles:
    - escalate.common
```

## Dependencies

None

## License

MIT
