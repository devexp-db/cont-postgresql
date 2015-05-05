help		= %D%/postgresql.txt
help_in		= %D%/help.txt.in

GENERATED_FILES += \
	$(help)

EXTRA_DIST += \
	$(help_in)

$(help): $(help_in) $(text_tpl_deps)
	$(text_tpl_gen)


contdoc_DATA = \
	$(help)

# vim: ft=automake noet
