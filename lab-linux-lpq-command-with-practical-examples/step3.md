# Manage Print Jobs with the lpq Command

In this step, you will learn how to manage print jobs using the `lpq` command.

First, let's check the current status of the print queue:

```
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes
```

Suppose you want to cancel a print job. You can use the `lprm` command to remove a job from the queue:

```
$ lprm 124
```

This will remove the print job with ID 124 from the queue.

You can also use the `lpq` command to check the updated status of the queue:

```
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
```

The job with ID 124 has been removed from the queue.

If you want to pause or resume a print job, you can use the `lpc` command:

```
$ lpc hold 123
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active* labex   123     document.pdf                    1234567 bytes

$ lpc release 123
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
```

The `lpc hold` command pauses the print job, and the `lpc release` command resumes the job.

Example output:

```
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes

$ lprm 124
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes

$ lpc hold 123
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active* labex   123     document.pdf                    1234567 bytes

$ lpc release 123
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
```

In this step, you learned how to manage print jobs using the `lpq`, `lprm`, and `lpc` commands.
