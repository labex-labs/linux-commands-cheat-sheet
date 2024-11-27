# Understand the Purpose and Syntax of the lpq Command

In this step, you will learn about the purpose and syntax of the `lpq` command in Linux. The `lpq` command is used to check the status of the print queue and manage print jobs.

To understand the purpose of the `lpq` command, let's first explore its syntax:

```
$ lpq [options] [printer]
```

The `lpq` command has the following options:

- `-a`: Display the status of all print queues.
- `-l`: Display a long listing, including job IDs, file names, and user names.
- `-P <printer>`: Specify the printer to check the queue for.

Now, let's try using the `lpq` command to check the status of the default print queue:

```
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes
```

The output shows the current status of the print queue, including the job rank, owner, job ID, file name, and total size of the print job.

Example output:

```
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes
```

In the next step, you will learn how to check the print queue status in more detail using the `lpq` command.
