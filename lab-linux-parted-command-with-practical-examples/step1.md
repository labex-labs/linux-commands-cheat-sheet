# Understand the parted Command

In this step, you will learn about the `parted` command, which is a powerful tool for managing disk partitions in Linux. The `parted` command allows you to create, resize, and delete partitions on your storage devices.

First, let's check the version of `parted` installed in the Ubuntu 22.04 Docker container:

```bash
sudo parted --version
```

Example output:

```
parted (GNU parted) 3.4
Copyright (C) 2023 Free Software Foundation, Inc.
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

The `parted` command provides several subcommands that allow you to manage disk partitions. Some of the commonly used subcommands are:

- `print`: Displays the partition table of a device.
- `unit`: Sets the default unit to be used.
- `mkpart`: Creates a new partition.
- `rm`: Removes a partition.
- `resizepart`: Resizes a partition.
- `rescue`: Attempts to recover lost partitions.

To get more information about the `parted` command and its available subcommands, you can use the built-in help:

```bash
sudo parted --help
```

This will display a comprehensive list of all the available `parted` subcommands and their usage.
