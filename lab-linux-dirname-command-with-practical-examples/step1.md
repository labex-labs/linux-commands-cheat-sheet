# Understand the Purpose and Syntax of dirname Command

In this step, you will learn about the purpose and syntax of the `dirname` command in Linux. The `dirname` command is used to extract the directory name from a given file path.

The basic syntax of the `dirname` command is:

```
dirname FILE
```

Where `FILE` is the file path from which you want to extract the directory name.

For example, let's say you have a file path `/home/labex/project/file.txt`. If you run the `dirname` command on this file path, it will output the directory name:

```
$ dirname /home/labex/project/file.txt
/home/labex/project
```

As you can see, the `dirname` command has extracted the directory name `/home/labex/project` from the given file path.

You can also use the `dirname` command with variables or other Linux commands to get the directory name. For example:

```
$ file_path="/home/labex/project/file.txt"
$ dirname $file_path
/home/labex/project
```

In this example, we first store the file path in a variable `file_path`, and then use the `dirname` command to extract the directory name from the variable.
