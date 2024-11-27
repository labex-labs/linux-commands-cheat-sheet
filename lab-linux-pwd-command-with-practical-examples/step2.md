# Explore the pwd Command in Different Directories

In this step, you will explore the behavior of the `pwd` command when you navigate to different directories.

First, let's create a new directory and navigate to it:

```bash
mkdir ~/project/subdirectory
cd ~/project/subdirectory
```

Now, run the `pwd` command again:

```bash
pwd
```

Example output:

```
/home/labex/project/subdirectory
```

As you can see, the output of the `pwd` command has changed to reflect the new current working directory.

Next, let's go back to the parent directory:

```bash
cd ..
pwd
```

Example output:

```
/home/labex/project
```

The `pwd` command now shows that we are back in the parent directory, `/home/labex/project`.

Finally, let's navigate to the root directory:

```bash
cd /
pwd
```

Example output:

```
/
```

The `pwd` command now shows that we are in the root directory, `/`.

The `pwd` command always displays the full path of the current working directory, regardless of where you are in the file system. This makes it a useful tool for keeping track of your location and navigating the file system.
