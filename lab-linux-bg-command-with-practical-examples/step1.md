# Understand the Purpose and Syntax of the bg Command

In this step, you will learn about the purpose and syntax of the `bg` command in Linux. The `bg` command is used to move a suspended (stopped) job to the background, allowing you to continue working in the foreground.

To begin, let's start a process in the foreground and then suspend it using the `Ctrl+Z` key combination:

```bash
$ sleep 60
^Z
[1]+  Stopped                 sleep 60
```

As you can see, the `sleep 60` command has been suspended and is now in the background.

To move the suspended process to the background, use the `bg` command:

```bash
$ bg
[1]+ sleep 60 &
```

The `bg` command resumes the suspended process and moves it to the background, allowing you to continue working in the foreground.

You can also use the `bg` command with a job number to move a specific suspended process to the background. For example, if you have multiple suspended processes, you can use `bg 2` to move the second job to the background.

Example output:

```
[1]+ sleep 60 &
```

The syntax for the `bg` command is:

```
bg [job_id]
```

Where `job_id` is the optional job number of the suspended process you want to move to the background. If no job number is specified, the `bg` command will move the most recently suspended process to the background.
