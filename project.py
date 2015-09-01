config = {
    'name': 'cont-postgresql',
    'macros': {
        'cont_script_header': 'cont_debug "command: $0 $*"',
        'pgdata': '/var/lib/pgsql/data',
        'pghome': '/var/lib/pgsql',
    },
}
