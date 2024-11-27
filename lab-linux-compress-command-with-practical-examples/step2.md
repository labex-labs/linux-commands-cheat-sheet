# Compress and Decompress Files Using compress Command

In this step, we will learn how to use the `compress` command to compress and decompress files.

First, let's create a sample text file to work with:

```
$ echo "This is a sample text file." > example.txt
```

Now, let's compress the `example.txt` file using the `compress` command:

```
$ compress example.txt
```

This will create the compressed file `example.txt.Z`.

To see the difference in file size, let's check the file sizes:

```
$ ls -l
-rw-r--r-- 1 labex labex 27 Apr 17 08:36 example.txt
-rw-r--r-- 1 labex labex 23 Apr 17 08:36 example.txt.Z
```

As you can see, the compressed file `example.txt.Z` is smaller in size compared to the original `example.txt` file.

Now, let's decompress the `example.txt.Z` file using the `uncompress` command:

```
$ uncompress example.txt.Z
```

This will create the original `example.txt` file.

Example output:

```
$ ls
example.txt  example.txt.Z
$ uncompress example.txt.Z
$ ls
example.txt
```

In the next step, we will explore some advanced options of the `compress` command.
