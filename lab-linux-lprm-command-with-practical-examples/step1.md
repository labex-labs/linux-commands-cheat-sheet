# Introduction to the lprm Command

In this step, you will learn about the `lprm` command, which is used to remove print jobs from the print queue on a Linux system. The `lprm` command allows you to remove a specific print job or all print jobs from the queue.

To begin, let's check the current print queue using the `lpq` command:

```bash
sudo lpq
```

Example output:

```
Rank    Owner   Job     File(s)                         Total Size
active  labex   1       document.pdf                    1234 bytes
1st     labex   2       report.txt                      4567 bytes
```

As you can see, there are two print jobs in the queue, with job IDs 1 and 2.

To remove a specific print job, you can use the `lprm` command followed by the job ID. For example, to remove job 1, you would run:

```bash
sudo lprm 1
```

Example output:

```
job "1" dequeued
```

This will remove the print job with ID 1 from the queue.

If you want to remove all print jobs from the queue, you can use the `lprm -` command:

```bash
sudo lprm -
```

Example output:

```
job "2" dequeued
```

This will remove all print jobs from the queue.
