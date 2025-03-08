# Build libvirt with chv

Reference: https://libvirt.org/compiling.html

```
meson setup build -Dsystem=true -Ddriver_ch=enabled
ninja -C build
```

Get rid of existing build: `rm -rf build`

Run libvirtd `build/src/libvirtd`

Build argument list: `meson_options.txt`

Notice any library missing. You will need them.
