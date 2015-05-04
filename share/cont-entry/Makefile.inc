entry		= %D%/postgresql.sh
entry_in	= %D%/entry.in

GENERATED_FILES += \
	$(entry)

EXTRA_DIST += \
	$(entry_in)

$(entry): $(entry_in) $(text_tpl_deps)
	$(text_tpl_gen)


contentry_DATA = \
	$(entry)

# vim: ft=automake noet
