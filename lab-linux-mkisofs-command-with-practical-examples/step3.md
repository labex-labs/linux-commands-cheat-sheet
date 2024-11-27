# Customizing ISO Image with Directories and Files

In this step, we will learn how to customize the ISO image by including directories and files.

First, let's create a directory structure and some files that we want to include in the ISO image:

```bash
mkdir -p ~/project/iso-content/documents
touch ~/project/iso-content/documents/file1.txt
touch ~/project/iso-content/documents/file2.txt
```

Now, we can use the `mkisofs` command to create the ISO image with the custom content:

```bash
sudo mkisofs -o ~/project/custom.iso -V "My Custom ISO" -p "Labex" -publisher "Labex" ~/project/iso-content
```

Here's what the various options mean:

- `-o`: Specifies the output file name.
- `-V`: Sets the volume label for the ISO image.
- `-p`: Sets the preparer information.
- `-publisher`: Sets the publisher information.
- The last argument is the directory containing the files to be included in the ISO image.

Example output:

```
Total translation table size: 0
Total rockridge attributes bytes: 0
Total directory bytes: 0
Path table size(bytes): 10
Max brk space used 0
0.01% done, estimate finish Tue Apr 18 12:34:56 2023
0.02% done, estimate finish Tue Apr 18 12:34:56 2023
0.03% done, estimate finish Tue Apr 18 12:34:56 2023
[...]
100.00% done, estimate finish Tue Apr 18 12:34:56 2023
Total translation table size: 0
Total rockridge attributes bytes: 0
Total directory bytes: 0
Path table size(bytes): 10
Max brk space used 0
wrote /home/labex/project/custom.iso - 4096 blocks
```

Now, let's verify that the custom ISO image was created successfully:

```bash
ls -l ~/project/custom.iso
```

Example output:

```
-rw-r--r-- 1 labex labex 2097152 Apr 18 12:34 /home/labex/project/custom.iso
```
