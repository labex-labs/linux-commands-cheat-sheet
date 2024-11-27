# Retrieve the Directory Name from a File Path

In this step, you will learn how to use the `dirname` command to retrieve the directory name from a file path.

Let's start by creating a sample file path:

```
$ cd ~/project
$ touch file.txt
$ echo "This is a sample file." > file.txt
$ file_path=$(pwd)/file.txt
$ echo $file_path
/home/labex/project/file.txt
```

Now, we can use the `dirname` command to extract the directory name from the `file_path` variable:

```
$ dir_name=$(dirname $file_path)
$ echo $dir_name
/home/labex/project
```

As you can see, the `dirname` command has extracted the directory name `/home/labex/project` from the file path stored in the `file_path` variable.

You can also use the `dirname` command directly with a file path:

```
$ dirname /home/labex/project/file.txt
/home/labex/project
```

This will give you the same result as the previous example.

The `dirname` command is particularly useful when you need to perform operations on the directory part of a file path, such as changing the current working directory or creating a new directory.
