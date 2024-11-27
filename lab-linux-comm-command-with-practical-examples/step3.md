# Customize the Output of the comm Command with Options

In this step, you will learn how to customize the output of the `comm` command using various options.

First, let's create two more sample text files, `file3.txt` and `file4.txt`:

```
$ cat > file3.txt
apple
banana
cherry
date
fig
$ cat > file4.txt
banana
cherry
date
grape
kiwi
```

Now, let's explore some of the options available with the `comm` command:

1. **Suppress columns**:

   - `comm -1 file3.txt file4.txt`: Suppress the column of lines unique to `file3.txt`
   - `comm -2 file3.txt file4.txt`: Suppress the column of lines unique to `file4.txt`
   - `comm -3 file3.txt file4.txt`: Suppress the column of lines common to both files

2. **Suppress all column headers**:

   - `comm -1 -2 -3 file3.txt file4.txt`: Suppress all column headers

3. **Suppress blank separators**:

   - `comm -w file3.txt file4.txt`: Suppress the blank space separators between columns

4. **Suppress line numbers**:
   - `comm --nocheck-order file3.txt file4.txt`: Suppress line numbers (assumes the files are already sorted)

Example outputs:

```
$ comm -1 file3.txt file4.txt
        banana
        cherry
date
        grape
        kiwi
$ comm -1 -2 -3 file3.txt file4.txt
banana
cherry
date
grape
kiwi
$ comm -w file3.txt file4.txt
applebananacherrydate figbananacherrydate grape kiwi
$ comm --nocheck-order file3.txt file4.txt
apple
banana
cherry
date
fig
banana
cherry
date
grape
kiwi
```
