exec		= %D%/cont-postgresql-exec
exec_in		= %D%/exec.in

initdb		= %D%/cont-postgresql-initdb
initdb_in	= %D%/initdb.in

preexec		= %D%/cont-postgresql-preexec
preexec_in	= %D%/preexec.in

GENERATED_FILES += \
	$(exec) \
	$(initdb) \
	$(preexec)

EXTRA_DIST += \
	$(exec_in) \
	$(initdb_in) \
	$(preexec_in)

$(exec): $(exec_in) $(text_tpl_deps)
	$(text_tpl_gen_script)

$(initdb): $(initdb_in) $(text_tpl_deps)
	$(text_tpl_gen_script)

$(preexec): $(preexec_in) $(text_tpl_deps)
	$(text_tpl_gen_script)

libexec_SCRIPTS += \
	$(exec) \
	$(initdb) \
	$(preexec)

# vim: ft=automake noet
