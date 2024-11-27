# Combine grep with Other Linux Commands

In this final step, you will learn how to combine the grep command with other Linux commands to perform more advanced text processing tasks.

Let's start by creating a new sample file with some log entries:

```bash
cat > logs.txt <<EOF
2023-04-01 10:30:45 INFO: Application started
2023-04-01 10:31:12 DEBUG: Connecting to database
2023-04-01 10:31:15 INFO: Database connection established
2023-04-01 10:31:30 ERROR: Failed to process user request
2023-04-01 10:32:00 INFO: Application shutting down
EOF
```

Now, let's use grep to find all the ERROR log entries:

```bash
grep "ERROR" logs.txt
```

Example output:

```
2023-04-01 10:31:30 ERROR: Failed to process user request
```

To get a count of the number of ERROR log entries, we can combine grep with the `wc` (word count) command:

```bash
grep "ERROR" logs.txt | wc -l
```

Example output:

```
1
```

Another useful combination is using grep with the `cut` command to extract specific fields from log entries. For example, to get the timestamp and log level for each entry:

```bash
grep "INFO\|DEBUG\|ERROR" logs.txt | cut -d' ' -f1-3
```

Example output:

```
2023-04-01 10:30:45 INFO:
2023-04-01 10:31:12 DEBUG:
2023-04-01 10:31:15 INFO:
2023-04-01 10:31:30 ERROR:
2023-04-01 10:32:00 INFO:
```

The `cut` command is used to split the line by the space character (`-d' '`) and extract the first 3 fields (`-f1-3`).

You can also use grep with other commands like `sort`, `uniq`, and `awk` to perform more advanced text processing tasks. The possibilities are endless when you combine grep with other Linux utilities.

That's it for this lab on the grep command. You should now have a good understanding of how to use grep to search for patterns in text files and how to combine it with other Linux commands for efficient text processing.
