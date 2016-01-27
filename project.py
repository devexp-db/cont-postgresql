config = {
    'name': 'cont-postgresql',
    'macros': {
        'cont_postgresql_version': '1.0.1',
        'cont_script_header': 'cont_debug "command: $0 $*"',
        'container_cmd': '$bindir/cont-postgresql-cmd',
        'pgdata': '/var/lib/pgsql/data',
        'pghome': '/var/lib/pgsql',
        'atomic_install':
            '$atomic_docker_pcmd $pkgdatadir/atomic/install.sh',
        'atomic_uninstall':
            '$atomic_docker_pcmd $pkgdatadir/atomic/uninstall.sh',
        'component_docdir': '$contdocdir/postgresql'
    },
}
