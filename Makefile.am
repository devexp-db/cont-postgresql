bin_SCRIPTS =
libexec_SCRIPTS =

GENERATED_FILES =
EXTRA_DIST =

include bin/Makefile.inc
include libexec/Makefile.inc
include share/cont-docs/Makefile.inc
include share/cont-entry/Makefile.inc
include share/cont-postgresql/Makefile.inc

CLEANFILES = $(GENERATED_FILES)

service		= postgresql-container.service
service_in	= postgresql-container.service.in

GENERATED_FILES += postgresql-container.in
EXTRA_DIST += \
	$(service_in) \
	.inst-list

systemdunits_DATA = $(service)

$(service): $(service_in) $(text_tpl_deps)
	$(text_tpl_gen_script)

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
