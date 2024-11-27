# Managing Print Jobs with lpd

In this final step, we will learn how to manage print jobs using the lpd command.

First, let's create a sample text file to print:

```bash
echo "This is a test print job." > ~/project/test_print.txt
```

Now, let's submit the file to the "myprinter" print queue:

```bash
lpr ~/project/test_print.txt
```

This will send the "test_print.txt" file to the "myprinter" print queue for printing.

To view the current print jobs in the queue, use the `lpq` command:

```bash
sudo lpq myprinter
```

Example output:

```
myprinter is ready
Rank   Owner   Job     File(s)                         Total Size
active labex   123     test_print.txt                  24 bytes
```

The output shows that the "test_print.txt" file is currently being printed as job 123.

If you need to cancel a print job, use the `lprm` command:

```bash
sudo lprm 123
```

This will cancel the print job with ID 123.

Finally, let's check the print queue again to verify that the job has been removed:

```bash
sudo lpq myprinter
```

Example output:

```
myprinter is ready
no entries
```

The output shows that the print queue is now empty, indicating that the print job has been successfully canceled.
