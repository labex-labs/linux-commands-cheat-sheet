# Receiving Files with the uuto Command

In this step, we will learn how to use the `uuto` command to receive files from a remote system.

On the remote system, the user should have sent a file using the `uuto` command, as we practiced in the previous step. Now, let's check for any incoming files on our local system.

The `uuto` command stores incoming files in the `/var/spool/uucppublic` directory by default. Let's navigate to this directory and list the contents:

```
cd /var/spool/uucppublic
ls -l
```

Example output:

```
total 4
-rw-rw-r-- 1 labex labex 20 Apr 12 12:34 example.txt
```

In this example, we can see that the `example.txt` file has been received from the remote system.

To retrieve the file, we can use the `uupick` command:

```
uupick example.txt
```

Example output:

```
[OK] example.txt
```

The `uupick` command will move the received file from the `/var/spool/uucppublic` directory to the current working directory.

You can also use the `uupick` command with the `-m` option to automatically move the received files to a specific directory:

```
uupick -m ~/received_files example.txt
```

This will move the `example.txt` file to the `~/received_files` directory.
