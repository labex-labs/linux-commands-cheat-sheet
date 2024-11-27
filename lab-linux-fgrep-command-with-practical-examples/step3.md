# Combine fgrep with Other Linux Commands for Efficient Text Manipulation

In this final step, you will learn how to combine the `fgrep` command with other Linux commands to perform more complex text manipulation tasks.

Let's start by creating a directory with some sample text files:

```
cd ~/project
mkdir sample_files
cd sample_files
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
echo "This is file3.txt" > file3.txt
```

Now, let's say you want to find all the files in the `sample_files` directory that contain the word "file":

```
fgrep "file" *.txt

Example output:
file1.txt:This is file1.txt
file2.txt:This is file2.txt
file3.txt:This is file3.txt
```

You can combine `fgrep` with the `wc` command to count the number of matching files:

```
fgrep "file" *.txt | wc -l

Example output:
3
```

Another useful combination is `fgrep` with `xargs` to perform an action on the matching files:

```
fgrep "file" *.txt | xargs rm

# This will delete all the files containing the word "file"
```

You can also use `fgrep` with `sed` to perform text substitution:

```
cat file1.txt
# This is file1.txt

fgrep -l "file" *.txt | xargs sed -i 's/file/document/g'

cat file1.txt
# This is document1.txt
```

In this example, we use `fgrep -l` to get a list of files containing the word "file", then use `xargs sed` to replace all occurrences of "file" with "document" in those files.

The possibilities are endless when you combine `fgrep` with other powerful Linux commands. Experiment and explore to find the most efficient ways to manipulate text data in your projects.
