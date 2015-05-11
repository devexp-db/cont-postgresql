#!/bin/bash

set -e

cont_lib_version="{{ spec['cont_lib_version'] }}"
cont_pg_version="{{ spec['cont_pg_version'] }}"

cont_lib="cont-lib-${cont_lib_version}"
cont_pg="cont-postgresql-${cont_pg_version}"

build_tarball()
(
    tarball="$1-$2.tar.gz"

    test -f "$tarball" || {
        wget -O $tarball "https://praiskup.fedorapeople.org/proj/$1/$tarball"
    }

    tar -xf $tarball
    cd "$1-$2"
    ./configure --prefix=/usr
    make
    rm -rf i
    make install DESTDIR="$PWD/i"
    file_list=`pwd`/.inst-list
    echo $file_list
    cd i && tar -czf ../dist.tar.gz -T "$file_list"
)


build_tarball cont-lib        "$cont_lib_version"
build_tarball cont-postgresql "$cont_pg_version"

rm -rf docker && mkdir docker
cp "$cont_lib/dist.tar.gz" docker/cont-lib.tar.gz
cp "$cont_pg/dist.tar.gz" docker/cont-postgresql.tar.gz
