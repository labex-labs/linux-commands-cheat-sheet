# Handling Confirmation Prompts and Force Removal

In this final step, you will learn how to handle confirmation prompts and use the force removal option with the `rm` command.

By default, the `rm` command will prompt you for confirmation before removing each file or directory. This is a safety feature to prevent accidental deletion. Let's demonstrate this:

```
mkdir ~/project/test_dir
touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
rm ~/project/test_dir/*
```

Example output:

```
labex@ubuntu:~/project$ mkdir ~/project/test_dir
labex@ubuntu:~/project$ touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
labex@ubuntu:~/project$ rm ~/project/test_dir/*
rm: remove regular file '~/project/test_dir/file1.txt'? y
rm: remove regular file '~/project/test_dir/file2.txt'? y
rm: remove regular file '~/project/test_dir/file3.txt'? y
```

As you can see, the `rm` command prompts you for confirmation before removing each file.

If you want to bypass these confirmation prompts, you can use the `-f` (force) option:

```
rm -rf ~/project/test_dir
```

Example output:

```
labex@ubuntu:~/project$ rm -rf ~/project/test_dir
```

The `-f` option will remove the files and directories without prompting for confirmation.

Congratulations! You have now learned how to use the `rm` command to remove files and directories, handle confirmation prompts, and use the force removal option.
