# Retrieve System Information Using uuname

In this step, we will explore how to use the `uuname` command to retrieve detailed information about the local system.

First, let's get the basic system information using `uuname` without any options:

```bash
uuname
```

Example output:

```
ubuntu
```

This command returns the system name, which is "ubuntu" in our case.

To get more detailed information, we can use the following options:

```bash
uuname -a  # Print all information
```

Example output:

```
ubuntu Ubuntu 22.04.1 LTS x86_64
```

This command prints the system name, node name, release, version, and machine hardware name.

You can also retrieve specific information using the following options:

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

These commands allow you to retrieve individual pieces of system information.

Additionally, you can combine `uuname` with other Linux commands to perform more advanced tasks. For example, you can use `uuname` with `grep` to filter the output:

```bash
uuname -a | grep "Ubuntu"
```

Example output:

```
ubuntu Ubuntu 22.04.1 LTS x86_64
```

This command retrieves all system information and then filters the output to only show lines containing the word "Ubuntu".

In the next step, we will explore more practical examples of using the `uuname` command.
