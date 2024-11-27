# Redirect nohup Output to a File

In this step, you will learn how to redirect the output of a long-running process started with `nohup` to a custom file instead of the default `nohup.out` file.

Let's start by running a long-running process and redirecting its output to a custom file:

```bash
nohup ~/project/long_process.sh > ~/project/output.log 2>&1 &
```

Here's what each part of the command does:

- `nohup ~/project/long_process.sh`: Runs the `long_process.sh` script using `nohup`.
- `> ~/project/output.log`: Redirects the standard output (stdout) of the process to the `output.log` file in the `~/project` directory.
- `2>&1`: Redirects the standard error (stderr) of the process to the same file as the standard output.
- `&`: Runs the process in the background.

To verify that the process is still running and the output is being redirected to the custom file, you can use the following commands:

```bash
ps aux | grep long_process.sh
cat ~/project/output.log
```

The `ps` command will show that the long-running process is still running, and the `cat` command will display the contents of the `output.log` file.
