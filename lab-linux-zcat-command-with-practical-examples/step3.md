# Combine zcat with Other Linux Commands

In this step, you will learn how to combine the `zcat` command with other Linux commands to perform more advanced tasks.

One common use case is to search the contents of a gzipped file using the `grep` command. Let's try this:

```bash
zcat another_sample.txt.gz | grep "sample"
```

Example output:

```
This is another sample text file.
```

In this example, we use the `zcat` command to decompress the `another_sample.txt.gz` file, and then pipe the output to the `grep` command to search for the word "sample" within the file contents.

You can also use the `zcat` command with other commands, such as `wc` to count the number of lines, words, or characters in a gzipped file:

```bash
zcat another_sample.txt.gz | wc -l
```

Example output:

```
1
```

This command uses `zcat` to decompress the file, and then pipes the output to the `wc` command with the `-l` option to count the number of lines.

Another useful combination is using `zcat` with the `tar` command to extract files from a gzipped tarball:

```bash
tar -zxvf archive.tar.gz
```

In this example, the `-z` option tells `tar` to use `zcat` to decompress the gzipped file before extracting the contents.

By combining `zcat` with other Linux commands, you can perform a wide range of tasks on compressed files, such as searching, counting, or extracting their contents, without the need to decompress the entire file first.
