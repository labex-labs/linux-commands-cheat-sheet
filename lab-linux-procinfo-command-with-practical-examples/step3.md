# Customizing procinfo Output

In this final step, we will learn how to customize the output of the `procinfo` command to focus on specific system information.

The `procinfo` command allows you to specify which system information to display by using command-line options. Let's explore some examples:

1. Display only CPU information:

```bash
sudo procinfo -C
```

2. Display only memory information:

```bash
sudo procinfo -M
```

3. Display only disk information:

```bash
sudo procinfo -D
```

4. Display only network information:

```bash
sudo procinfo -N
```

You can also combine these options to display multiple types of system information at once. For example:

```bash
sudo procinfo -CM
```

This command will display CPU and memory information in a single output.

Additionally, you can save the `procinfo` output to a file for later analysis:

```bash
sudo procinfo -CMN > system_info.txt
```

This will save the CPU, memory, and network information to a file named `system_info.txt` in the current directory.

The `procinfo` command also supports custom formatting of the output. You can use the `-f` option followed by a format string to specify the desired output format. For example:

```bash
sudo procinfo -f "CPU: %c, Memory: %m, Disk: %d, Network: %n"
```

This will display the system information in a more compact and customized format.

By leveraging the various options and customization features of the `procinfo` command, you can tailor the output to focus on the specific system information that is most relevant to your monitoring and troubleshooting needs.
