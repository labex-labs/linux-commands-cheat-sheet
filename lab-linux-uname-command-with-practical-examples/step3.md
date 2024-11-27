# Combine uname Options for Detailed Output

In this step, you will learn how to combine multiple `uname` options to get a more detailed and comprehensive output about your Linux system.

While the individual `uname` options provide specific system information, you can combine them to get a complete overview of your system's hardware and software configurations.

Let's start by using the `-a` (or `--all`) option, which will display all available system information in a single command:

```bash
uname -a
```

Example output:

```
Linux labex-docker 5.15.0-1023-aws #25~22.04.1-Ubuntu SMP Thu Apr 13 15:45:57 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

This command provides the following information:

- Kernel name: Linux
- Hostname: labex-docker
- Kernel release: 5.15.0-1023-aws
- Kernel version: #25~22.04.1-Ubuntu SMP Thu Apr 13 15:45:57 UTC 2023
- Machine hardware name: x86_64
- Processor type: x86_64
- Hardware platform: x86_64
- Operating system: GNU/Linux

If you want to focus on specific aspects of the system information, you can combine the individual options:

```bash
uname -snrvm
```

Example output:

```
Linux 5.15.0-1023-aws x86_64 x86_64
```

This command displays the kernel name, release, version, and machine hardware name.

You can also use the `lsb_release` command to get additional details about the Linux distribution:

```bash
lsb_release -a
```

Example output:

```
No LSB modules are available.
Distributor ID: Ubuntu
Description: Ubuntu 22.04.1 LTS
Release: 22.04
Codename: jammy
```

This command provides information about the Linux distribution, including the distributor ID, description, release, and codename.

By combining the `uname` and `lsb_release` commands, you can get a comprehensive overview of your Linux system's hardware and software configurations.
