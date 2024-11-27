# Understand the uname Command

In this step, you will learn about the `uname` command, which is used to retrieve information about the operating system and hardware of the Linux system.

The `uname` command provides various options to display different types of system information, such as the kernel name, operating system, processor type, and more.

To get started, let's explore the basic usage of the `uname` command:

```bash
uname
```

Example output:

```
Linux
```

The basic `uname` command without any options will display the kernel name, which is "Linux" in this case.

Now, let's try some common options to get more detailed information:

```bash
uname -s  # Print the kernel name
uname -n  # Print the network node hostname
uname -r  # Print the kernel release
uname -v  # Print the kernel version
uname -m  # Print the machine hardware name
uname -p  # Print the processor type
uname -i  # Print the hardware platform
uname -o  # Print the operating system
```

Example output:

```
Linux
labex-docker
5.15.0-1023-aws
#25~22.04.1-Ubuntu SMP Thu Apr 13 15:45:57 UTC 2023
x86_64
x86_64
x86_64
GNU/Linux
```

As you can see, each option provides a specific piece of system information. You can combine these options to get a more comprehensive output:

```bash
uname -a  # Print all system information
```

Example output:

```
Linux labex-docker 5.15.0-1023-aws #25~22.04.1-Ubuntu SMP Thu Apr 13 15:45:57 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

The `-a` (or `--all`) option will display all the available system information in a single command.
