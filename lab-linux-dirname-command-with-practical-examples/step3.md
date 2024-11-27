# Combine dirname with Other Linux Commands

In this step, you will learn how to combine the `dirname` command with other Linux commands to perform more complex operations.

One common use case is to change the current working directory to the directory containing a file. You can do this by combining `dirname` with the `cd` command:

```
$ file_path="/home/labex/project/file.txt"
$ cd $(dirname $file_path)
$ pwd
/home/labex/project
```

In this example, we first store the file path in the `file_path` variable. Then, we use the `dirname` command to extract the directory name, and pass it as an argument to the `cd` command to change the current working directory.

Another example is to create a new directory based on the directory name of a file path. You can do this by combining `dirname` with the `mkdir` command:

```
$ file_path="/home/labex/project/file.txt"
$ new_dir=$(dirname $file_path)/new_dir
$ mkdir $new_dir
$ ls -l
total 4
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 new_dir
-rw-r--r-- 1 labex labex   22 Apr 12 12:34 file.txt
```

In this example, we first use `dirname` to extract the directory name from the `file_path` variable. Then, we create a new directory name by appending `/new_dir` to the directory name. Finally, we use the `mkdir` command to create the new directory.

The `dirname` command can be combined with many other Linux commands, such as `find`, `grep`, `sed`, and `awk`, to perform more complex file and directory operations. The key is to understand how to use `dirname` to extract the directory name from a file path, and then use that information to perform the desired operation.
