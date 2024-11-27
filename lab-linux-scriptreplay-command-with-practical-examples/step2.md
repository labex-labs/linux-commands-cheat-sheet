# Recording Terminal Sessions with script Command

In this step, you will learn how to use the `script` command to record your terminal sessions in Linux.

The `script` command is a simple yet powerful tool that allows you to record everything you do in the terminal. This can be useful for various purposes, such as:

- Troubleshooting: You can record a session and review it later to identify the steps that led to an issue.
- Training: You can record a session and share it with others to demonstrate a specific workflow or procedure.
- Documentation: You can use the recorded sessions to create step-by-step guides or tutorials.

Let's start by creating a new directory for your project:

```bash
mkdir ~/project
cd ~/project
```

Now, let's use the `script` command to start recording a terminal session:

```bash
script recording.log
```

This will start recording your terminal session, and all the commands you execute will be saved to the `recording.log` file.

```
Script started, output file is recording.log
```

You can now execute some commands in your terminal, and they will be recorded in the `recording.log` file.

```bash
echo "This is a test command."
ls -l
```

To stop the recording, type `exit`:

```
exit
Script done, output file is recording.log
```

You can now review the contents of the `recording.log` file:

```bash
cat recording.log
```

Example output:

```
This is a test command.
total 0
-rw-r--r-- 1 labex labex 42 Apr 24 12:34 recording.log
```

The `script` command is a simple yet powerful tool that can be very useful in various scenarios. In the next step, you will learn how to replay the recorded terminal sessions using the `scriptreplay` command.
