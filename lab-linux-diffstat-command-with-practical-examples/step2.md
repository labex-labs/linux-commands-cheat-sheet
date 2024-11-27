# Explore the Basic Usage of the diffstat Command

In this step, you will explore the basic usage of the `diffstat` command and learn how to customize its output.

First, let's create a simple example to demonstrate the basic usage of `diffstat`. We'll create two text files, make some changes, and then use `diffstat` to analyze the differences.

```bash
# Create two text files
$ echo "This is file1.txt" > file1.txt
$ echo "This is file2.txt" > file2.txt

# Make some changes to file2.txt
$ echo "Added a new line" >> file2.txt
$ echo "Deleted a line" >> file2.txt

# Use diffstat to analyze the differences
$ diff file1.txt file2.txt | diffstat
 file1.txt | 1 +
 file2.txt | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)
```

The output of `diffstat` shows that two files were changed, with one insertion and one deletion in `file2.txt`.

Now, let's explore some of the options available with the `diffstat` command:

```bash
# Specify the maximum number of files to display
$ diff *.txt | diffstat -w 80 -n 1
 file1.txt | 1 +
 file2.txt | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

# Change the width of the histogram
$ diff *.txt | diffstat -w 120
 file1.txt | 1 +
 file2.txt | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

# Sort the files by the number of changes
$ diff *.txt | diffstat -s
 file2.txt | 2 +-
 file1.txt | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)
```

As you can see, the `diffstat` command provides several options to customize the output, such as controlling the width of the histogram, the maximum number of files to display, and the order of the files.
