# Removing a Specific Print Job

In this step, you will learn how to remove a specific print job from the print queue using the `lprm` command.

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

To remove the print job with ID 2, you can use the following command:

```bash
sudo lprm 2
```

Example output:

```
job "2" dequeued
```

This will remove the print job with ID 2 from the queue.

You can verify that the job has been removed by checking the print queue again:

```bash
sudo lpq
```

Example output:

```
Rank    Owner   Job     File(s)                         Total Size
active  labex   1       document.pdf                    1234 bytes
```

As you can see, the print job with ID 2 has been removed from the queue.
