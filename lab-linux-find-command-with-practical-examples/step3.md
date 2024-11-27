# Combine find with Other Commands for Advanced Searches

In this step, you will learn how to combine the `find` command with other Linux commands to perform more advanced file system searches.

1. Find and delete files:

   To find and delete files that match certain criteria, you can use the `find` command together with the `rm` command:

   ```bash
   find . -type f -name "*.tmp" -delete
   ```

   This command will find all regular files (`-type f`) with the `.tmp` extension in the current directory and delete them.

2. Find and execute commands on matching files:

   You can use the `find` command to execute a specific command on the files that match your search criteria. The `-exec` option allows you to do this.

   ```bash
   find . -type f -name "*.txt" -exec cat {} \;
   ```

   This command will find all regular files (`.txt` files) in the current directory and display their contents using the `cat` command.

3. Find and copy files:

   You can combine `find` with the `cp` command to copy files that match your search criteria to a different location.

   ```bash
   find . -type f -name "*.txt" -exec cp {} ~/backups/ \;
   ```

   This command will find all `.txt` files in the current directory and copy them to the `~/backups/` directory.

4. Find and move files:

   Similarly, you can use `find` with the `mv` command to move files that match your search criteria to a different location.

   ```bash
   find . -type f -name "*.bak" -exec mv {} ~/archive/ \;
   ```

   This command will find all `.bak` files in the current directory and move them to the `~/archive/` directory.

By combining the `find` command with other Linux commands, you can create powerful and flexible file system search and management workflows.
