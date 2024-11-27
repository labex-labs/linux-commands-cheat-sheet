# Updating and Upgrading the System with emerge

In this step, we will learn how to use the emerge command to update and upgrade the packages on our system.

First, let's update the package database to ensure we have the latest information about available packages:

```
sudo emerge --sync
```

This command will synchronize the local package database with the remote Portage tree, ensuring we have the latest package versions available.

Next, we can check for any package updates available on the system:

```
sudo emerge --update --deep --newuse @world
```

The `--update` option checks for package updates, `--deep` ensures dependencies are also updated, and `--newuse` will update packages if new USE flags are available.

The `@world` target represents all installed packages on the system.

Example output:

```
These are the packages that would be merged, in order:

Calculating dependencies... done!
[ebuild  R     ] sys-libs/glibc-2.36-r3  USE="acl caps crypt headers-only multilib nscd rpc selinux -audit -bound-nsl -compile-locales -doc -gd -headers -internal-dns -multiarch -nscd-compat -profile -suid -systemtap" ABI_X86="(64)"
[ebuild  R     ] sys-apps/util-linux-2.38.1  USE="cramfs fdformat ncurses nls pam readline static-libs unicode -build -doc -kill -logger -magic -python -setpriv -slang -su -systemd"
[ebuild  R     ] sys-devel/gcc-12.2.0  USE="cxx fortran graphite lto (multilib) nls nptl openmp (pie) (ssp) (vanilla) -ada -awt -debug -doc -go -jit -libssp -mpx -offense -pgo -regression-test -sanitize -selinux -systemtap"
[ebuild  R     ] sys-libs/zlib-1.2.13  USE="minizip static-libs"

Total: 4 packages (4 reinstalls), Size of downloads: 47,424 KiB

Would you like to merge these packages? [Yes/No]
```

After reviewing the list of packages to be updated, we can confirm the update process by entering "Yes".

The emerge command will then download, compile, and install the updated packages on our system.
