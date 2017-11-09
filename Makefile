cont_lib_dir = cont-lib

docker_main_tag_check = true

# HACK:  Ensure that 'git clone' doesn't cause confusion.  New clones should use
# '--recursive'.  Inspiration from:
# https://github.com/sclorg/postgresql-container
warning_msg = \
	echo >&2 "=============================================" ; \
	echo >&2 "please do 'git submodule update --init' first" ; \
	echo >&2 "=============================================" ; \
	echo >&2 ;

.PHONY: $(shell test -f $(cont_lib_dir)/Makefile.mk || { $(warning_msg) } )

include $(cont_lib_dir)/Makefile.mk
