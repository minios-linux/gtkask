# gtkask
Adapting the gtkdialog source code to build a package for use in MiniOS Flux (a Slax clone from the MiniOS team).

# building
```sh
git clone https://github.com/minios-linux/gtkask.git
mv gtkask gtkask-1.0
cd gtkask-1.0
dh_make --createorig -s -y
dpkg-buildpackage -rfakeroot -uc -us
```

