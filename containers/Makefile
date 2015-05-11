distro = fedora-21-x86_64

all: docker

dg	= dg

prep: prep.tpl prep.yaml
	$(dg) --distro $(distro).yaml --instantiate prep.yaml prep.tpl >$@
	chmod +x $@

sources: prep
	./prep

docker/Dockerfile: sources
	$(dg) --distro $(distro).yaml --instantiate pg-cont.yaml docker.tpl > $@

docker: docker/Dockerfile

docker-build: docker
	docker build docker

clean:
	rm -rf */ prep
