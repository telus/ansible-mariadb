# ansible-mariadb

[MariaDB](https://mariadb.org/) - An enhanced, drop-in replacement for MySQL.

[![Licence](https://img.shields.io/badge/Licence-MIT-blue.svg)](https://tldrlegal.com/license/mit-license)
[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)
[![Build Status](https://travis-ci.org/telusdigital/ansible-mariadb.svg?branch=master)](https://travis-ci.org/telusdigital/ansible-mariadb)
Tunables
--------

* `mariadb_client:` (boolean) - MariaDB client?
* `mariadb_user:` (string) - Name of user.
* `mariadb_group:` (string) - Name of group.
* `using_load_balancer:` (boolean) - Anything in front of MariaDB doing health checks?
* `mariadb_server:` (boolean) - MariaDB server?
* `mariadb_accepts_external_connections:` (boolean) - Accept external connections?
* `mariadb_runtime_root:` (string) - Directory for runtime.
* `mariadb_pidfile_path:` (string) - Directory for pidfile.
* `mariadb_socket_path:` (string) - Directory for socket.
* `mariadb_log_root:` (string) - Directory for logs.
* `mariadb_general_log_path:` (string) - Path for general log.
* `mariadb_slow_query_log_path:` (string) - Path for slow query log.
* `mariadb_backup_enabled:` (boolean) - Enable backup?
* `mariadb_backup_path:` (string) - Path mariadb backs up to.
* `mariadb_backup_frequency:` (string) - Frequency with which it backs up.

Dependencies
------------
* [telusdigital.apt-repository](https://github.com/telusdigital/ansible-apt-repository/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: telusdigital.mariadb


Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* [Aaron Pederson](https://aaronpederson.github.io) | [e-mail](mailto:aaronpederson@gmail.com) | [Twitter](https://twitter.com/GunFuSamurai) 
* Steven Harradine 
* [Justin Scott](https://jvscott.net) | [e-mail](mailto:jvscott@gmail.com) | [Twitter](https://twitter.com/AKindlyOrc)
