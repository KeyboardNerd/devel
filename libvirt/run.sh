# libvirt requires dbus
docker run -it -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket -v $(readlink -f .):/workspace --privileged libvirt_dev bash
