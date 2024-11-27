# Creating a Basic ISO Image

In this step, we will create a basic ISO image using the `mkisofs` command.

First, let's create a directory that will serve as the content for our ISO image:

```bash
mkdir ~/project/iso-content
```

Now, we can use the `mkisofs` command to create the ISO image:

```bash
sudo mkisofs -o ~/project/basic.iso ~/project/iso-content
```

This command will create an ISO image file named `basic.iso` in the `~/project` directory, using the contents of the `~/project/iso-content` directory.

Example output:

```
Succes - wrote /home/labex/project/basic.iso - 0 bytes, 0.000s
```

The `-o` option specifies the output file name, and the last argument is the directory containing the files to be included in the ISO image.

Now, we can verify that the ISO image was created successfully:

```bash
ls -l ~/project/basic.iso
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 18 12:34 /home/labex/project/basic.iso
```
