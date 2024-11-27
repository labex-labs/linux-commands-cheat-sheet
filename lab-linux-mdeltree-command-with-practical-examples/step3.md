# Handling Symbolic Links and Permissions with mdeltree

In this step, we will explore how the `mdeltree` command handles symbolic links and preserves permissions when removing directories.

First, let's create a test directory with a symbolic link:

```bash
mkdir -p ~/project/test_dir
touch ~/project/test_dir/file.txt
ln -s ~/project/test_dir/file.txt ~/project/test_dir/symlink.txt
```

Now, let's remove the `test_dir` directory using the `mdeltree` command with the `-l` option to follow the symbolic link:

```bash
sudo mdeltree -l ~/project/test_dir
```

Example output:

```
Removing directory: /home/labex/project/test_dir
Removed file: /home/labex/project/test_dir/file.txt
Removed symbolic link: /home/labex/project/test_dir/symlink.txt
Removed directory: /home/labex/project/test_dir
```

As you can see, the `mdeltree` command followed the symbolic link and removed the linked file as well.

Next, let's create a directory with specific permissions and try to remove it using `mdeltree`:

```bash
mkdir -p ~/project/test_dir
touch ~/project/test_dir/file.txt
chmod 755 ~/project/test_dir
sudo mdeltree -p ~/project/test_dir
```

Example output:

```
Removing directory: /home/labex/project/test_dir
Removed file: /home/labex/project/test_dir/file.txt
Removed directory: /home/labex/project/test_dir
```

The `-p` option ensures that the permissions and ownership of the deleted files and directories are preserved.
