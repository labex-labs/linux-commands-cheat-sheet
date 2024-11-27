# Understand the Purpose and Syntax of the cd Command

In this step, we will learn about the purpose and syntax of the `cd` command in Linux. The `cd` command is used to change the current working directory.

The basic syntax of the `cd` command is:

```
cd [directory]
```

Here, `[directory]` is the path of the directory you want to change to. The path can be either absolute or relative.

For example, to change to the `/home/labex/project` directory, you can use:

```
cd /home/labex/project
```

This is an absolute path, as it starts from the root directory (`/`).

To change to a directory relative to the current working directory, you can use:

```
cd directory_name
```

This will change the current working directory to the `directory_name` directory, which is located within the current working directory.

You can also use the following shortcuts with the `cd` command:

- `cd ~` or just `cd` to go to the home directory (`/home/labex`)
- `cd -` to go to the previous working directory
- `cd ..` to go to the parent directory of the current working directory

Example output:

```
labex@ubuntu:~/project$ cd /home/labex/project
labex@ubuntu:/home/labex/project$ cd ..
labex@ubuntu:/home/labex$ cd -
/home/labex/project
labex@ubuntu:/home/labex/project$
```
