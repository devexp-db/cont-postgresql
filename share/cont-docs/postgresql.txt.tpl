=======================
PostgreSQL in container
=======================

API Version:  {{ m.cont_postgresql_version }}

Documentation
-------------

You are encouraged to install this alias into your environment:

  $ alias pgcont_help='docker run --rm {{ m.docker_main_tag }} container-help --component postgresql'

Please consult documentation for PostgreSQL component via:

  $ pgcont_help

NEWS (changes in container layout) can be found in:

  $ pgcont_help --topic NEWS

Bug-reporting:
--------------

This container is based on 'cont-postgresql' component from
https://github.com/devexp-db/cont-postgresql project page.  Please, report
issues with PostgreSQL on the github page.
