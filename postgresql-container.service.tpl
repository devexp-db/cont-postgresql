# Currently, this is here because of the 'OOMScoreAdjust=-1000' set in the
# default service file and because we *want* initialize the data directory
# for the first time service is started against particular $PGDATA (in contrast
# with non-container scenarios where we rather fail).

[Unit]
Description=PostgreSQL database server in container
After=network.target

[Service]
Type=forking

User=postgres
Group=postgres

# Location of database directory
Environment=PGDATA={{ m.pgdata }}/data

# Where to send early-startup messages from the server (before the logging
# options of postgresql.conf take effect)
# This is normally controlled by the global default set by systemd
# StandardOutput=syslog

ExecStartPre={{ m.libexecdir }}/cont-postgresql-preexec

ExecStart={{ m.bindir }}/pg_ctl start -D ${PGDATA} -s -w -t 270
ExecStop={{ m.bindir }}/pg_ctl stop -D ${PGDATA} -s -m fast
ExecReload={{ m.bindir }}/pg_ctl reload -D ${PGDATA} -s

# Give a reasonable amount of time for the server to start up/shut down
TimeoutSec=300

[Install]
WantedBy=multi-user.target
