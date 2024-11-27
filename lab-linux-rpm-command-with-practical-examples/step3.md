# Perform RPM Package Queries and Verifications

In this step, we will learn how to perform various queries and verifications on installed RPM packages using the rpm command.

First, let's query the information of an installed package. We'll use the "bash" package as an example:

```bash
# Query information about the bash package
sudo rpm -qi bash
```

Example output:

```
Name        : bash
Version     : 5.1.16
Release     : 1.fc36
Architecture: x86_64
Install Date: Tue 04 Apr 2023 12:34:56 PM UTC
Group       : System Environment/Shells
Size        : 12206283
License     : GPLv3+
Signature   : RSA/SHA256, Tue 04 Apr 2023 12:34:56 PM UTC, Key ID 3c6e21a5b7d1e4b3
Source RPM  : bash-5.1.16-1.fc36.src.rpm
Build Date  : Tue 04 Apr 2023 12:34:56 PM UTC
Packager    : Fedora Project
URL         : http://www.gnu.org/software/bash/
Summary     : The GNU Bourne Again Shell
Description : The bash package contains the Bourne Again Shell (bash), a sh-compatible shell or command language interpreter.
```

Next, let's verify the integrity of an installed package. We'll use the "coreutils" package as an example:

```bash
# Verify the coreutils package
sudo rpm -V coreutils
```

Example output:

```
.......T     /usr/bin/chgrp
.......T     /usr/bin/chown
.......T     /usr/bin/cp
.......T     /usr/bin/dd
.......T     /usr/bin/df
```

The output shows any files in the coreutils package that have been modified since installation. The periods represent files that have not been modified, and the letters represent different types of changes (such as file permissions, ownership, or content).

Finally, let's query the list of files installed by a package. We'll use the "bash" package again:

```bash
# List the files installed by the bash package
sudo rpm -ql bash
```

Example output:

```
/bin/bash
/etc/bash.bashrc
/etc/skel/.bash_logout
/etc/skel/.bash_profile
/etc/skel/.bashrc
/usr/bin/bashbug
/usr/include/bash/bashbuild.h
/usr/include/bash/bashtypes.h
/usr/include/bash/rltypedefs.h
/usr/include/bash/shmbutil.h
/usr/lib/bash
/usr/lib/tmpfiles.d/bash.conf
/usr/share/doc/bash
/usr/share/info/bash.info.gz
/usr/share/man/man1/bash.1.gz
/usr/share/man/man1/bashbug.1.gz
```

In this step, you learned how to perform various queries and verifications on installed RPM packages using the rpm command. The key commands covered were `rpm -qi` for package information, `rpm -V` for package verification, and `rpm -ql` for listing installed files.
