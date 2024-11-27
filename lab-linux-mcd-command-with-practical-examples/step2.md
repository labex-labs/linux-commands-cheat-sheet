# Create Nested Directories with mcd

In this step, you will learn how to use the `mcd` command to create a series of nested directories efficiently.

Let's start by creating a new directory structure with multiple levels of subdirectories:

```
mcd project/docs/guides/linux
```

This single `mcd` command will create the following directory structure:

- `~/project/`
  - `docs/`
    - `guides/`
      - `linux/`

Example output:

```
labex@ubuntu:~/project$ mcd project/docs/guides/linux
labex@ubuntu:~/project/docs/guides/linux$
```

As you can see, the `mcd` command has created all the necessary directories and changed the current working directory to the deepest level, `~/project/docs/guides/linux`.

Now, let's create another nested directory structure:

```
mcd ../../python
```

This `mcd` command will create the `python` directory at the same level as the `linux` directory, and change the current working directory to it.

Example output:

```
labex@ubuntu:~/project/docs/guides/linux$ mcd ../../python
labex@ubuntu:~/project/docs/guides/python$
```

The directory structure now looks like this:

- `~/project/`
  - `docs/`
    - `guides/`
      - `linux/`
      - `python/`

The `mcd` command makes it easy to create complex directory structures without having to run multiple `mkdir` commands. This can save you time and effort, especially when working on large projects with a lot of directories.
