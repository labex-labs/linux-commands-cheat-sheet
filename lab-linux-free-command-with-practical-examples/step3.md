# Customize the free Command Output

In this final step, you will learn how to customize the output of the `free` command to suit your specific needs.

As you've seen in the previous steps, the `free` command provides a lot of useful information about the system's memory usage. However, sometimes you may want to focus on specific aspects of the memory usage or display the information in a different format.

Let's explore some of the available options to customize the `free` command output:

1. **Display memory size in different units**:

   - Use the `-h` option to display the memory size in a human-readable format (e.g., MB, GB):
     ```bash
     free -h
     ```
   - Use the `-m` option to display the memory size in megabytes:
     ```bash
     free -m
     ```
   - Use the `-g` option to display the memory size in gigabytes:
     ```bash
     free -g
     ```

2. **Display the total for all memory types**:

   - Use the `-t` option to include a total line in the output:
     ```bash
     free -t
     ```

3. **Display only specific memory types**:

   - Use the `-w` option to display only the "Mem:" section (physical memory):
     ```bash
     free -w
     ```
   - Use the `-s` option to display only the "Swap:" section (swap space):
     ```bash
     free -s
     ```

4. **Display the memory usage in a different format**:
   - Use the `--json` option to display the output in JSON format:
     ```bash
     free --json
     ```
   - Use the `--bytes` option to display the memory size in bytes:
     ```bash
     free --bytes
     ```

By combining these options, you can tailor the `free` command output to your specific needs. For example, to display the memory usage in a human-readable format with the total for all memory types, you can run:

```bash
free -h -t
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:           2.0G        1.0G        360M         70M        640M        1.5G
Swap:          1.0G          0B        1.0G
Total:         3.0G        1.0G        1.4G
```

By understanding how to customize the `free` command, you can more effectively monitor and analyze the memory usage on your Linux system.
