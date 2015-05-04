bin_SCRIPTS =
libexec_SCRIPTS =

GENERATED_FILES =
EXTRA_DIST =

include bin/Makefile.inc
include libexec/Makefile.inc
include share/cont-entry/Makefile.inc
include share/cont-postgresql/Makefile.inc

CLEANFILES = $(GENERATED_FILES)

generate_docker_tarball:
	./configure --prefix=/usr
	make
	rm -rf .inst
	make install DESTDIR=`pwd`/.inst
	tar --owner=root --group=root -czf cont-postgresql.tar.gz \
	    -C .inst \
	    --no-recursion \
	    -T $(abs_top_srcdir)/.inst-list

install-data-hook:
	$(MKDIR_P) $(DESTDIR)/$(pgdata)
	touch $(DESTDIR)/$(pgdata)/.container_internal
