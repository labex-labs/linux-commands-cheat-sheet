# Explore the Basic Usage of the readelf Command

In this step, you will explore the basic usage of the `readelf` command and learn how to extract various types of information from ELF files.

First, let's examine the basic options available with the `readelf` command:

```bash
readelf --help
```

This will display a list of all the available options and their descriptions. Some of the most commonly used options include:

- `-h`: Displays the ELF file header information
- `-S`: Displays the sections in the ELF file
- `-l`: Displays the program headers
- `-s`: Displays the symbol table
- `-d`: Displays the dynamic section
- `-r`: Displays the relocation entries

Now, let's try some of these options on a sample ELF file, such as the `/bin/ls` binary:

```bash
readelf -S /bin/ls
```

Example output:

```
There are 28 section headers, starting at offset 0x1998:

Section Headers:
  [Nr] Name              Type             Address           Offset
       Size              EntSize          Flags  Link  Info  Align
  [ 0]                   NULL             0000000000000000  00000000
       0000000000000000  0000000000000000           0     0     0
  [ 1] .interp           PROGBITS         0000000000400238  00000238
       000000000000001c  0000000000000000   A       0     0     1
  [ 2] .note.gnu.build-i NOTE             0000000000400254  00000254
       0000000000000024  0000000000000000   A       0     0     4
  ...
```

This command displays the section headers of the `/bin/ls` ELF file, providing information about the various sections, such as their names, types, addresses, and sizes.

You can also use the `readelf` command to display other information, such as the program headers, dynamic section, and symbol table. Try the following commands:

```bash
readelf -l /bin/ls
readelf -d /bin/ls
readelf -s /bin/ls
```

Explore the output of these commands to understand the different types of information that can be extracted from an ELF file using the `readelf` command.
