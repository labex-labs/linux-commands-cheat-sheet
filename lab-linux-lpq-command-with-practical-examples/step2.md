# Check the Print Queue Status Using the lpq Command

In this step, you will learn how to use the `lpq` command to check the status of the print queue in more detail.

First, let's check the status of the default print queue:

```
$ lpq
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes
```

The output shows the current print jobs in the queue, including the job rank, owner, job ID, file name, and total size.

You can also use the `-l` option to display a long listing with more details:

```
$ lpq -l
Rank   Owner   Job     File(s)                         Total Size
active labex   123     document.pdf                    1234567 bytes
        labex
1st    labex   124     report.docx                     2345678 bytes
        labex
```

The long listing includes additional information such as the user name associated with each print job.

To check the status of a specific printer, you can use the `-P` option followed by the printer name:

```
$ lpq -P printer1
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes
```

This will display the status of the print queue for the specified printer.

Example output:

```
Rank    Owner   Job     File(s)                         Total Size
active  labex   123     document.pdf                    1234567 bytes
1st     labex   124     report.docx                     2345678 bytes
```

In the next step, you will learn how to manage print jobs using the `lpq` command.
