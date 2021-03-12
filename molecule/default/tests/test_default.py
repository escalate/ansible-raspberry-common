"""Role testing files using testinfra"""


def test_timezone(host):
    """Check timezone configuration"""
    f = host.file("/etc/localtime")
    assert f.is_symlink
    assert f.linked_to == "/usr/share/zoneinfo/Europe/Berlin"
