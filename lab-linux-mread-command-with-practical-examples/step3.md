# Perform File Reading with mread

In this final step, we will put the `mread` command to use and perform some practical file reading operations.

First, let's create a larger sample file to work with:

```
dd if=/dev/urandom of=sample.bin bs=1M count=5
```

This will create a 5 MB binary file filled with random data.

Now, let's try some file reading operations using `mread`:

1. **Read the first 1 MB of the file**:

   ```
   mread -n $((1024*1024)) sample.bin
   ```

   This will read and display the first 1 MB of the sample file.

2. **Read the last 1 MB of the file**:

   ```
   mread -s $((5*1024*1024-1024*1024)) -n $((1024*1024)) sample.bin
   ```

   This will skip the first 4 MB of the file and read the last 1 MB.

3. **Read the file in 512 KB chunks**:

   ```
   chunk_size=$((512*1024))
   offset=0
   while [ $offset -lt $((5*1024*1024)) ]; do
     mread -s $offset -n $chunk_size sample.bin
     offset=$((offset + chunk_size))
   done
   ```

   This will read the file in 512 KB chunks and display the output.

4. **Compare the file contents with another file**:
   ```
   mread sample.bin | diff - reference.bin
   ```
   Assuming you have a `reference.bin` file, this will compare the contents of the two files and display the differences, if any.

By exploring these examples, you should now have a good understanding of how to use the `mread` command to read files in various ways.
