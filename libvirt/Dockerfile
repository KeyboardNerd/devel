ARG image_digest=sha256:f528891ab1aa484bf7233dbcc84f3c806c3e427571d75510a9d74bb5ec535b33
FROM debian:bookworm-slim@${image_digest}

RUN apt update
RUN apt install -y meson vim git libxml2-utils xsltproc libglib2.0-dev libgnutls28-dev libjson-c-dev libcurl4-gnutls-dev docutils-common libnl-3-dev libnl-route-3-dev
RUN apt install -y libxml2-dev ebtables dnsmasq dmidecode qemu-kvm
RUN git config --global --add safe.directory '*'

# In local build process, libvirt-qemu user isn't added and it'll cause problem.
# https://groups.google.com/g/linux.debian.bugs.dist/c/h9qvcwLDwx8/m/aq8buJdMxAwJ
RUN useradd -ms /bin/bash libvirt-qemu
