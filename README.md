# Ansible Role: Raspberry - Common

An Ansible role that manages basic operating system configuration on Raspberry Pi OS.

## Install

```
$ ansible-galaxy install escalate.raspberry-common
```

## Role Variables

Please see [defaults/main.yml](https://github.com/escalate/ansible-raspberry-common/blob/master/defaults/main.yml) for a complete list of variables that can be overridden.

## Example Playbook

```
- hosts: all
  roles:
    - escalate.raspberry-common
```

## Dependencies

None

## License

MIT
