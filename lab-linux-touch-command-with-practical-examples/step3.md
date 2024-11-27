# Modify File Timestamps with the touch Command

In this step, we will learn how to modify the access and modification timestamps of files using the `touch` command.

First, let's create a new file:

```
cd ~/project
touch existing_file.txt
```

Now, let's update the access time of the file:

```
touch -a existing_file.txt
```

Example output:

```

```

The `touch -a` command updated the access time of the `existing_file.txt` file.

Next, let's update the modification time of the file:

```
touch -m existing_file.txt
```

Example output:

```

```

The `touch -m` command updated the modification time of the `existing_file.txt` file.

You can also set the access and modification times to a specific date and time using the `-d` or `-t` options:

```
touch -d "2023-04-01 10:30:00" existing_file.txt
```

Example output:

```

```

The `touch -d "2023-04-01 10:30:00"` command set the access and modification times of the `existing_file.txt` file to April 1, 2023, at 10:30 AM.
