# Create Nested Directories with mkdir -p

In this step, you will learn how to create nested directories using the `mkdir -p` command in Linux.

The `mkdir -p` command allows you to create a directory structure with multiple levels in a single command. This is useful when you need to create a directory and its parent directories at the same time.

Let's create a nested directory structure:

```
mkdir -p projects/web-app/src/components
```

Example output:

```
$ mkdir -p projects/web-app/src/components
$ ls -R
projects

./projects:
web-app

./projects/web-app:
src

./projects/web-app/src:
components
```

As you can see, the `mkdir -p` command created the entire directory structure, including the `projects`, `web-app`, `src`, and `components` directories.

Now, let's create another nested directory structure:

```
mkdir -p documents/reports/2023/q1
```

Example output:

```
$ mkdir -p documents/reports/2023/q1
$ ls -R
documents  projects

./documents:
reports

./documents/reports:
2023

./documents/reports/2023:
q1

./projects:
web-app
```

The `mkdir -p` command allows you to create the entire directory structure, including the `documents`, `reports`, `2023`, and `q1` directories, in a single step.
