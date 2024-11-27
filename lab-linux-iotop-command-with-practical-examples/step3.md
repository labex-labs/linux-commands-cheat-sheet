# Analyze Disk I/O Usage with iotop

In this step, you will learn how to use the iotop command to analyze disk I/O usage on your Ubuntu 22.04 system.

First, let's start the iotop command in interactive mode:

```bash
sudo iotop
```

This will display a real-time view of the disk I/O usage on your system. The output will show the following information:

- **TID**: The process ID of the process using disk I/O.
- **PRIO**: The I/O priority of the process.
- **USER**: The user running the process.
- **DISK READ**: The read rate of the process in bytes per second.
- **DISK WRITE**: The write rate of the process in bytes per second.
- **SWAPIN**: The percentage of time the process has spent waiting on swap.
- **IO>**: The percentage of time the process has spent performing I/O.
- **COMMAND**: The command line of the process.

You can use the following keys to interact with iotop:

- **Left/Right Arrow**: Cycle through the available columns.
- **Up/Down Arrow**: Scroll through the list of processes.
- **o**: Toggle between showing all processes and only those actually performing I/O.
- **p**: Toggle between showing current and cumulative I/O usage.
- **a**: Toggle between showing I/O usage in bytes per second or in total bytes.
- **q**: Quit the iotop command.

For example, to show only the processes actually performing I/O, press the 'o' key. To toggle between showing current and cumulative I/O usage, press the 'p' key.

Once you have identified the processes consuming the most disk I/O, you can take appropriate actions to optimize your system's performance, such as:

- Identifying and addressing resource-intensive processes.
- Optimizing disk-related operations, such as reducing unnecessary disk writes.
- Monitoring and managing disk I/O-intensive applications or services.

Now that you have learned how to use iotop to analyze disk I/O usage, you have completed the Lab on the Linux iotop command.
