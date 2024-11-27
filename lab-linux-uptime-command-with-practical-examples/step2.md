# Explore uptime Command Options

In this step, we will explore the various options available with the `uptime` command to customize the output and extract specific information.

The `uptime` command supports several options that allow you to control the format and content of the output. Let's examine some of the commonly used options:

1. **Display uptime in a more readable format**:

```bash
uptime -p
```

Example output:

```
up 1 day, 12 hours, 35 minutes
```

This option displays the uptime in a more human-readable format.

2. **Display only the load average**:

```bash
uptime -q
```

Example output:

```
 0.00 0.01 0.05
```

This option displays only the load average, without the other information.

3. **Display the uptime in seconds**:

```bash
uptime -s
```

Example output:

```
2023-04-11 15:42:17
```

This option displays the system boot time in the format of a timestamp.

4. **Display the number of users logged in**:

```bash
uptime -h
```

Example output:

```
 15:42:17 up 1 day, 12:34,  0 users,  load average: 0.00, 0.01, 0.05
```

This option displays the number of users currently logged in.

You can combine these options to customize the output as per your requirements. For example, to display the uptime in a readable format and the load average only, you can use:

```bash
uptime -p -q
```
