Lxc-dev
=======

[![Build Status](https://travis-ci.org/toopy/ansible-role-lxc-dev.svg)](https://travis-ci.org/toopy/ansible-role-lxc-dev)

Install lxc from source to enable lxc support with `ansible` for the popular
linux distributions.

Requirements
------------

If you enable `lxc_dev_enable_bridge` you will need `iptables`.

If you enable `lxc_dev_enable_dnsmasq` variable you will need `dnsmasq`.

If you enable `lxc_dev_enable_bridge` or `lxc_dev_enable_dnsmasq` variable you
will need `resolvconf`.

Role Variables
--------------

Should work out of the box but you can specify the following values:

    # lxc git repo to clone
    lxc_dev_git_repository: https://github.com/lxc/lxc.git

    # source dir where to clone and build
    lxc_dev_src_path: /usr/local/src

    # user for the clone and build part
    lxc_dev_user: root

    # bridge
    lxc_dev_enable_bridge: yes
    lxc_dev_addr: 10.0.3.1
    lxc_dev_network: 10.0.3.0/24
    lxc_dev_dhcp_range: 10.0.3.2,10.0.3.254

    # dnsmasq
    lxc_dev_enable_dnsmasq: yes
    lxc_dev_tld: lxc

    # python
    lxc_dev_pip_executable: pip2

    # system package requirements
    lxc_dev_system_packages:
      - name: automake
      - name: debootstrap
      - name: git
      - name: libcap-dev
      - name: pkg-config
      - name: python-dev
      - name: python-pip

Dependencies
------------

- GROG.package

Example Playbook
----------------

You can use this role as follow:

    - hosts: local
      roles:
         - { role: toopy.lxc-dev }

License
-------

MIT

Author Information
------------------

florent@toopy.org
