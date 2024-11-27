# Compress Executable Files Using gzexe

In this step, you will learn how to use the `gzexe` command to compress executable files on your Linux system.

First, let's create a sample executable file that we can use for the demonstration:

```bash
echo '#!/bin/bash
echo "This is a sample executable file."' > ~/project/sample_executable.sh
chmod +x ~/project/sample_executable.sh
```

Now, let's compress the executable file using the `gzexe` command:

```bash
gzexe ~/project/sample_executable.sh
```

The `gzexe` command will create a compressed version of the executable file, which will have the same name but with a `.gz` extension.

To verify the compression, let's check the file size of the original and compressed versions:

```bash
ls -l ~/project/sample_executable.sh
ls -l ~/project/sample_executable.sh.gz
```

Example output:

```
-rwxr-xr-x 1 labex labex 57 Apr 17 12:34 /home/labex/project/sample_executable.sh
-rwxr-xr-x 1 labex labex 37 Apr 17 12:34 /home/labex/project/sample_executable.sh.gz
```

As you can see, the compressed version is significantly smaller in size compared to the original executable file.

Now, let's try to execute the compressed file:

```bash
~/project/sample_executable.sh.gz
```

Example output:

```
This is a sample executable file.
```

The compressed file can be executed directly, without the need to decompress it first.
