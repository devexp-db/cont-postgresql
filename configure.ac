# Use the MAJ.MIN[~SUFF].  Note that X.X > X.X~SUFF!
AC_INIT([cont-postgresql], [0.9~dev], [praiskup@redhat.com])

AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])

AM_INIT_AUTOMAKE([-Wall foreign])
AC_CONFIG_FILES([Makefile])
AM_SILENT_RULES([yes])

_AX_TEXT_TPL_INIT

_AX_TEXT_TPL_ARG_VAR([conthookdir], ['${datadir}'],
                     [hook directory])
_AX_TEXT_TPL_ARG_VAR([contlib], ['${datadir}/cont-lib/cont-lib.sh'],
                     [container library path])
_AX_TEXT_TPL_ARG_VAR([pgdata], ['/var/lib/pgsql/data'])

AC_OUTPUT
