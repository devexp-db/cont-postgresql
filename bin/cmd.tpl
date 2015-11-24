#!/bin/bash

# We split this file into 'preexec' and 'exec' to match what is done in
# systemd service file (ExecStart & ExecStartPre), to allow easier re-using of
# those scripts.

. {{ macros.pkgdatadir }}/cont-postgresql.sh

{{ macros.cont_script_header }}

{{ macros.libexecdir }}/cont-postgresql-preexec \
    && exec {{ macros.libexecdir }}/cont-postgresql-exec
