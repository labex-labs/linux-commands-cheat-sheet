# Locate the Path of Executable Files Using the which Command

In this step, you will learn how to use the `which` command to locate the path of executable files on your system.

First, let's create a simple script called `hello.sh` in the `~/project` directory:

```bash
cd ~/project
echo "#!/bin/bash" > hello.sh
echo "echo 'Hello, World!'" >> hello.sh
chmod +x hello.sh
```

Now, let's use the `which` command to find the path of the `hello.sh` script:

```bash
which hello.sh
```

Example output:

```
/home/labex/project/hello.sh
```

The output shows that the `hello.sh` script is located at the `/home/labex/project/hello.sh` path.

You can also use the `which` command to find the path of other executables, such as system commands or installed applications. For example:

```bash
which python
which git
which nano
```

Example output:

```
/usr/bin/python3
/usr/bin/git
/usr/bin/nano
```

The `which` command is a useful tool for quickly identifying the location of executable files on your system.
