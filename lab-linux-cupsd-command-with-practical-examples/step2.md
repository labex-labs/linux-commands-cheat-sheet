# Manage Printers Using the cupsd Command

In this step, you will learn how to manage printers using the `cupsd` command, which is the CUPS print daemon. The `cupsd` command provides a command-line interface for interacting with the CUPS printing system.

First, let's list the available printers on the system:

```bash
sudo cupsd -t
```

Example output:

```
scheduler is running
0 jobs in the queue
Rendering completed 0 jobs
Processed 0 jobs
Accepted 0 jobs
Rejected 0 jobs
Pending 0 jobs
Stopped 0 jobs
Canceled 0 jobs
Aborted 0 jobs
Completed 0 jobs
Purged 0 jobs
```

As you can see, there are currently no printers configured on the system.

To add a new printer, you can use the `lpadmin` command, which is part of the CUPS package. Let's add a new printer named "MyPrinter":

```bash
sudo lpadmin -p MyPrinter -v ipp://localhost/printers/MyPrinter -P /usr/share/ppd/cupsfilters/generic.ppd -E
```

This command creates a new printer named "MyPrinter" with the specified URI and PPD (PostScript Printer Description) file.

To list the available printers again, run:

```bash
sudo cupsd -t
```

Example output:

```
scheduler is running
0 jobs in the queue
Rendering completed 0 jobs
Processed 0 jobs
Accepted 0 jobs
Rejected 0 jobs
Pending 0 jobs
Stopped 0 jobs
Canceled 0 jobs
Aborted 0 jobs
Completed 0 jobs
Purged 0 jobs
1 printer
MyPrinter accepting requests since Fri 2023-04-28 12:34:56 +0000
```

Now you can see the newly added "MyPrinter" in the list of available printers.
