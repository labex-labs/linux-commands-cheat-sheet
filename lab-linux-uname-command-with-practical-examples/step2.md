# Retrieve System Information Using uname

In this step, you will learn how to use the `uname` command to retrieve detailed information about your Linux system's hardware and software configurations.

Let's start by exploring the different options available with the `uname` command:

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

You can combine these options to get a more comprehensive output:

```bash
uname -a  # Print all system information
```

Example output:

```
Linux labex-docker 5.15.0-1023-aws #25~22.04.1-Ubuntu SMP Thu Apr 13 15:45:57 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

The `-a` (or `--all`) option will display all the available system information in a single command.

To further explore the system information, you can use the following commands:

```bash
cat /etc/os-release  # Display detailed OS information
lsb_release -a       # Display Linux distribution information
```

Example output:

```
NAME="Ubuntu"
VERSION="22.04.1 LTS (Jammy Jellyfish)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 22.04.1 LTS"
VERSION_ID="22.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=jammy
UBUNTU_CODENAME=jammy
```

These commands provide additional details about the operating system, such as the distribution name, version, and codename.
