Lxc-dev
=======

Install lxc from source to enable lxc support with ansible for the popular
linux distributions.

Requirements
------------

All system requirements that should be installed with this role:

- automake
- git
- libcap-dev
- python-dev
- python-pip

Role Variables
--------------

Should work out of the box but you can specify the following values:

    # lxc git repo to clone
    git_lxc: git@github.com:lxc/lxc.git

    # source dir where to clone and build
    src_path: /usr/local/src

    # user for the clone and build part
    user: root

    # container template and release to test lxc_container work
    container_template: debian
    container_template_release: jessie

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
