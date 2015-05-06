# -------------------------- #
# Example of postinitdb hook #
# -------------------------- #

# Typical usage
# -------------
# $ docker run -ti \
#   -v postinit.sh:/usr/share/cont-volume/postgresql/postinitdb/postinit.sh \
#   -v /var/lib/pgsql/docker-uninitialized-data:/var/lib/pgsql/data \
#   postgresql-image

# WARNING: If you used POSTGRESQL_ADMIN_PASSWORD (which triggered 'md5'
# authentication), make sure you've correctly set credentials in
# /var/lib/pgsql/.pgpass.  Otherwise, the following methods won't be able to
# authenticate correctly and whole hook will fail.

# In post-initdb hook the server is still off, but to work with the database we
# need to have it running.  This step will start server listenning only on
# localhost.  Also, consider whether running postgresql in single-user-mode is
# not enough!  If your hook-script is safe enough (mainly it is not SQL
# injectable thus you don't need 'psql --set' feature), single-user-mode is
# probably better option then 'pgcont_server_start_local' &
# 'pgcont_server_stop'.
pgcont_server_start_local

# Create single user & database, which is probably the most commonly used
# scenario for use-cases like WordPress deployment, or so.
# WARNING: This action could be also easily done from the outside of the
# container once the PostgreSQL server is up&running (because you are able to
# access admin account remotely).  Doing this via postinitdb hook thus could be
# considered doubtful.
pgcont_create_simple_db wordpress wordpress-user your-password

# Make sure the server is stopped properly before the 'cont-postgresql-exec'
# script is run.
pgcont_server_stop
