PostgreSQL in container
=======================

How to build Postgresql Docker image based on Fedora (RHEL) system and do quick
testing:

1. install [dg tool](https://github.com/devexp-db/distgen)

2. Clone git repository:

   ```
   $ git clone https://github.com/devexp-db/cont-postgresql.git
   $ cd cont-postgresql
   $ git submodule update --init
   ```

3. Build the distgen for fedora-22-x86\_64

   ```
   $ make distro=fedora-22-x86_64
   $ cd output
   $ docker build -t postgresql-fedora-22 .
   ```

4. Run the image:

   ```
   $ docker run -ti --rm postgresql-fedora-22 container-usage | less
   $ docker run -ti --rm \
        -e POSTGRESQL_CONTAINER_OPTS="assert_external_data = false" \
        postgresql-fedora-22
   ```
