# gtkdialog-slax
Adapting the gtkdialog source code to build a package for use in MiniOS Flux (a Slax clone from the MiniOS team).

# building
```sh
git clone https://github.com/minios-linux/gtkdialog-slax.git
mv xlunch-slax gtkdialog-slax-1.0
cd gtkdialog-slax-1.0
dh_make --createorig -s -y
dpkg-buildpackage -rfakeroot -uc -us
```

