# Understand the uuname Command

In this step, we will explore the `uuname` command in Linux, which is used to retrieve information about the local system. The `uuname` command is part of the `uucp` (Unix-to-Unix Copy) package, which is a set of utilities for transferring files between Unix-like systems.

To begin, let's start by checking the version of `uuname` installed on our system:

```bash
uuname --version
```

Example output:

```
uuname (GNU sharutils) 4.15.2
Copyright (C) 2019 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Fran,cois Pinard.
```

The `uuname` command provides information about the local system, including the system name, node name, release, version, and machine hardware name. Let's see how we can use it to retrieve this information:

```bash
uuname -s  # System name
uuname -n  # Node name
uuname -r  # Release
uuname -v  # Version
uuname -m  # Machine hardware name
```

Example output:

```
ubuntu
ubuntu
22.04
Ubuntu 22.04.1 LTS
x86_64
```

The `uuname` command can also be used in combination with other Linux commands to perform more advanced tasks. For example, you can use `uuname` with `grep` to filter the output:

```bash
uuname -a | grep "Ubuntu"
```

Example output:

```
ubuntu Ubuntu 22.04.1 LTS x86_64
```

In the next step, we will explore more practical examples of using the `uuname` command.
