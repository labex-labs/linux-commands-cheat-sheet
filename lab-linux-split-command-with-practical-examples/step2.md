# Split a File into Multiple Parts

In this step, you will learn how to use the `split` command to split a file into multiple parts.

Let's continue using the `large_file.txt` file we created in the previous step. We can split this file into smaller chunks using the `split` command with different options:

```bash
# Split the file into 5 equal-sized parts
split -n 5 large_file.txt split_part_

# Split the file into parts with a maximum size of 500 KB
split -b 500k large_file.txt split_part_

# Split the file into parts with a line-based approach
split -l 1000 large_file.txt split_part_
```

Example output:

```
split_part_aa
split_part_ab
split_part_ac
split_part_ad
split_part_ae
```

The first command splits the file into 5 equal-sized parts, the second command splits the file into parts with a maximum size of 500 KB, and the third command splits the file into parts with a maximum of 1,000 lines per file.

You can use the `ls` command to verify that the files have been created:

```bash
ls -l split_*
```

Example output:

```
-rw-r--r-- 1 labex labex 2000000 Apr 12 12:34 split_part_aa
-rw-r--r-- 1 labex labex 2000000 Apr 12 12:34 split_part_ab
-rw-r--r-- 1 labex labex 2000000 Apr 12 12:34 split_part_ac
-rw-r--r-- 1 labex labex 2000000 Apr 12 12:34 split_part_ad
-rw-r--r-- 1 labex labex 2000000 Apr 12 12:34 split_part_ae
```

In the next step, you will learn how to customize the `split` command options even further.
