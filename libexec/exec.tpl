#!/bin/bash

. {{ m.pkgdatadir }}/cont-postgresql.sh

{{ m.cont_script_header }}

pgcont_cleanup_environment

exec postgres -D "$(pgcont_opt pgdata)"
