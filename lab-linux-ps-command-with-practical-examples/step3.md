# Monitor CPU and Memory Usage

In this step, you will learn how to use the `ps` command to monitor the CPU and memory usage of running processes.

To view the CPU and memory usage of all processes, you can use the `ps` command with the `-o` option to customize the output:

```bash
ps -eo pid,user,%cpu,%mem,cmd
```

Example output:

```
  PID USER     %CPU %MEM COMMAND
 1234 labex     2.0  0.1 /bin/bash
 5678 labex     0.5  0.2 ps -eo pid,user,%cpu,%mem,cmd
```

This command displays the following information for each process:

- `PID`: The process ID
- `USER`: The user who owns the process
- `%CPU`: The percentage of CPU used by the process
- `%MEM`: The percentage of memory used by the process
- `COMMAND`: The command that started the process

You can also sort the output by CPU or memory usage to identify the processes consuming the most system resources:

```bash
ps -eo pid,user,%cpu,%mem,cmd --sort=-%cpu
```

Example output:

```
  PID USER     %CPU %MEM COMMAND
 5678 labex     2.0  0.2 ps -eo pid,user,%cpu,%mem,cmd --sort=-%cpu
 1234 labex     1.5  0.1 /bin/bash
```

This command sorts the output by descending CPU usage, so the process using the most CPU is displayed first.

Similarly, you can sort by memory usage:

```bash
ps -eo pid,user,%cpu,%mem,cmd --sort=-%mem
```

Example output:

```
  PID USER     %CPU %MEM COMMAND
 5678 labex     2.0  0.2 ps -eo pid,user,%cpu,%mem,cmd --sort=-%mem
 1234 labex     1.5  0.1 /bin/bash
```

This command sorts the output by descending memory usage, so the process using the most memory is displayed first.
