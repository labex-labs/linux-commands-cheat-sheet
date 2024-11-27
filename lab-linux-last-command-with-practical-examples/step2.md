# Explore the last Command Output

In this step, you will explore the different options and output formats of the `last` command.

The `last` command has several options that you can use to customize the output. Some of the commonly used options include:

- `-n <number>`: Displays the last `<number>` of entries.
- `-x`: Includes additional information such as the system shutdown and reboot entries.
- `-i`: Displays the IP address of the user's login.
- `-R`: Omits the hostname field from the output.

Let's try some of these options:

```bash
last -n 3
```

Example output:

```
labex   pts/0        172.17.0.1     Fri Mar 31 10:23   still logged in
labex   pts/0        172.17.0.1     Fri Mar 31 10:22 - 10:23  (00:00)
labex   pts/0        172.17.0.1     Fri Mar 31 10:21 - 10:22  (00:01)
```

This shows the last 3 login entries.

```bash
last -x
```

Example output:

```
labex   pts/0        172.17.0.1     Fri Mar 31 10:23   still logged in
labex   pts/0        172.17.0.1     Fri Mar 31 10:22 - 10:23  (00:00)
labex   pts/0        172.17.0.1     Fri Mar 31 10:21 - 10:22  (00:01)
reboot  system boot  4.15.0-162-generic Fri Mar 31 10:20 - 10:23  (00:03)
```

The `-x` option includes the system reboot entry.

```bash
last -i
```

Example output:

```
labex   pts/0        172.17.0.1     Fri Mar 31 10:23   still logged in
labex   pts/0        172.17.0.1     Fri Mar 31 10:22 - 10:23  (00:00)
labex   pts/0        172.17.0.1     Fri Mar 31 10:21 - 10:22  (00:01)
reboot  system boot  4.15.0-162-generic Fri Mar 31 10:20 - 10:23  (00:03)
```

The `-i` option includes the IP address of the user's login.

Try experimenting with different options to see how the output changes.
