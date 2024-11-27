# Explore the Syntax and Options of the mrd Command

In this step, you will explore the syntax and available options of the `mrd` command in more detail.

First, let's review the basic syntax of the `mrd` command:

```bash
mrd [options] directory1 directory2 ...
```

The `mrd` command accepts one or more directory paths as arguments, and you can use various options to customize its behavior.

Now, let's go through some of the common options for the `mrd` command:

1. **Interactive mode (`-i`):**

   ```bash
   $ mrd -i dir1 dir2 dir3
   Remove directory 'dir1'? y
   Removed directory: dir1
   Remove directory 'dir2'? y
   Removed directory: dir2
   Remove directory 'dir3'? y
   Removed directory: dir3
   ```

   The `-i` option prompts the user for confirmation before removing each directory.

2. **Force removal (`-f`):**

   ```bash
   $ mrd -f dir1 dir2 dir3
   Removed directory: dir1
   Removed directory: dir2
   Removed directory: dir3
   ```

   The `-f` option forces the removal of directories without prompting the user.

3. **Verbose output (`-v`):**

   ```bash
   $ mrd -v dir1 dir2 dir3
   Removed directory: dir1
   Removed directory: dir2
   Removed directory: dir3
   ```

   The `-v` option displays the names of the directories as they are being removed.

4. **Recursive removal (`-r`):**
   ```bash
   $ mrd -r dir1 dir2 dir3
   Removed directory: dir1/subdir1
   Removed directory: dir1/subdir2
   Removed directory: dir1
   Removed directory: dir2/subdir1
   Removed directory: dir2
   Removed directory: dir3
   ```
   The `-r` option allows the `mrd` command to remove directories and their contents recursively.

Remember, the `mrd` command is a powerful tool, but it should be used with caution. Always double-check the directories you're about to remove and consider using the interactive mode (`-i`) to confirm the removal of each directory.
