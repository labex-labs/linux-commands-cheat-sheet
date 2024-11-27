# Understanding the Purpose of the ln Command

In this step, you will learn about the purpose of the `ln` command in Linux. The `ln` command is used to create links, which are special files that point to other files or directories. There are two types of links: hard links and symbolic (soft) links.

Hard links are created using the `ln` command without any additional options. Hard links are essentially copies of the original file, but they share the same inode (file metadata) and physical storage location. This means that changes made to the file content will be reflected in all hard links.

To create a hard link, run the following command:

```
ln original_file hard_link_name
```

Example output:

```
$ ln file1.txt file1_hardlink.txt
```

Symbolic links, also known as soft links, are created using the `-s` option with the `ln` command. Symbolic links are pointers to the original file or directory, and they contain the path to the target. Unlike hard links, symbolic links can point to files or directories across file system boundaries.

To create a symbolic link, run the following command:

```
ln -s original_file symbolic_link_name
```

Example output:

```
$ ln -s file1.txt file1_symlink.txt
```

The main difference between hard links and symbolic links is that hard links are tightly coupled with the original file, while symbolic links are more flexible and can point to files or directories across the file system.
