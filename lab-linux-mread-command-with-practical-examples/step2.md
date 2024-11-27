# Explore mread Command Options

In this step, we will explore the different options available with the `mread` command and see how they can be used to read files in various ways.

Let's start by creating a sample file to work with:

```
echo "This is a sample text file." > sample.txt
```

Now, let's try using some of the `mread` command options:

1. **Read a specific number of bytes**:

   ```
   mread -n 10 sample.txt
   ```

   Example output:

   ```
   This is a
   ```

   The `-n` option specifies the number of bytes to read from the file.

2. **Read a specific number of characters**:

   ```
   mread -c 10 sample.txt
   ```

   Example output:

   ```
   This is a
   ```

   The `-c` option specifies the number of characters to read from the file.

3. **Skip bytes before reading**:

   ```
   mread -s 5 -n 10 sample.txt
   ```

   Example output:

   ```
   a sample
   ```

   The `-s` option specifies the number of bytes to skip before starting the read operation.

4. **Read from standard input**:

   ```
   echo "This is another sample text." | mread -c 10
   ```

   Example output:

   ```
   This is an
   ```

   If the `FILE` argument is omitted or set to `-`, the `mread` command will read from standard input.

5. **Suppress file name header**:
   ```
   mread -q -n 10 sample.txt
   ```
   Example output:
   ```
   This is a
   ```
   The `-q` (or `--quiet`) option suppresses the output of the file name header.

By exploring these options, you can customize the behavior of the `mread` command to suit your specific file reading needs.
