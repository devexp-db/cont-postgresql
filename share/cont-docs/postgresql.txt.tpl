=======================
PostgreSQL in container
=======================

API Version:  {{ m.cont_postgresql_version }}

Documentation
-------------
Please consult documentation for PostgreSQL component via:

  $ docker run --rm IMAGE container-help --component postgresql

NEWS
----
$ pgcont_help='docker run --rm IMAGE container-help --component postgresql'
$ pgcont_help --topic NEWS

Latest changes are available under this command:

Bug-reporting:
--------------

This container is based on 'cont-postgresql' component from
https://github.com/devexp-db/cont-postgresql project page.  Please, report
issues with PostgreSQL on the github page.
