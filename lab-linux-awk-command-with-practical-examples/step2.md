# Perform Text Processing with awk

In this step, you will learn how to use awk for more advanced text processing tasks.

Let's start by creating a file named `log.txt` with the following content:

```
2023-04-01 10:30:00 INFO: This is a log message.
2023-04-02 11:45:00 ERROR: An error occurred.
2023-04-03 14:20:00 INFO: Another log message.
2023-04-04 16:10:00 WARN: A warning message.
```

Now, let's use awk to extract the date, time, and log level from each line:

```
awk -F'[ :]' '{print $1, $2, $3, $4, $5, $6}' log.txt
```

Example output:

```
2023-04-01 10 30 00 INFO This
2023-04-02 11 45 00 ERROR An
2023-04-03 14 20 00 INFO Another
2023-04-04 16 10 00 WARN A
```

In this example, the `-F'[ :]'` option tells awk to use space and colon as the field separators. The `{print $1, $2, $3, $4, $5, $6}` action prints the first six fields of each line, which correspond to the date, time, and log level.

You can also use awk to filter and transform the data. For example, let's print only the lines with the "ERROR" log level:

```
awk -F'[ :]' '$5 == "ERROR" {print $1, $2, $3, $4, $5, $6}' log.txt
```

Example output:

```
2023-04-02 11 45 00 ERROR An
```

In this example, the `$5 == "ERROR"` pattern selects the lines where the fifth field (log level) is "ERROR", and the `{print $1, $2, $3, $4, $5, $6}` action prints the selected fields.
