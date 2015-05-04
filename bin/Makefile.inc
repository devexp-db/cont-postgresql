cmd		= %D%/cont-postgresql-cmd
cmd_in		= %D%/cmd.in

GENERATED_FILES += \
	$(cmd)

EXTRA_DIST += \
	$(cmd_in) \
	$(exec_in) \
	$(initdb_in) \
	$(preexec_in)

$(cmd): $(cmd_in) $(text_tpl_deps)
	$(text_tpl_gen_script)

bin_SCRIPTS += \
	$(cmd)

# vim: ft=automake noet
