"""Role testing files using testinfra"""


def test_timezone(host):
    """Check timezone configuration"""
    f = "/etc/localtime"
    assert host.file(f).is_symlink
    assert host.file(f).linked_to == "/usr/share/zoneinfo/Europe/Berlin"
