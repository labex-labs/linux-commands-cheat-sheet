# Removing All Print Jobs

In this step, you will learn how to remove all print jobs from the print queue using the `lprm` command.

First, let's check the current print queue using the `lpq` command:

```bash
sudo lpq
```

Example output:

```
Rank    Owner   Job     File(s)                         Total Size
active  labex   1       document.pdf                    1234 bytes
1st     labex   2       report.txt                      4567 bytes
```

To remove all print jobs from the queue, you can use the following command:

```bash
sudo lprm -
```

Example output:

```
job "1" dequeued
job "2" dequeued
```

This will remove all print jobs from the queue.

You can verify that the queue is now empty by checking the print queue again:

```bash
sudo lpq
```

Example output:

```
no entries
```

As you can see, the print queue is now empty, and all print jobs have been removed.
