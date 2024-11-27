# Apply diffstat to Analyze Patch Files and Git Diffs

In this final step, you will learn how to use the `diffstat` command to analyze patch files and Git diffs.

First, let's create a simple patch file and use `diffstat` to analyze it:

```bash
# Create a patch file
$ diff file1.txt file2.txt > changes.patch

# Use diffstat to analyze the patch file
$ cat changes.patch | diffstat
 file1.txt | 1 +
 file2.txt | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)
```

The `diffstat` command can read the patch file directly and provide a summary of the changes.

Next, let's try using `diffstat` with Git diffs. We'll create a new Git repository, make some changes, and then use `diffstat` to analyze the differences.

```bash
# Initialize a new Git repository
$ git init
Initialized empty Git repository in ~/project/.git/

# Create a new file and commit it
$ echo "This is file1.txt" > file1.txt
$ git add file1.txt
$ git commit -m "Add file1.txt"

# Make some changes and create a new commit
$ echo "Added a new line" >> file1.txt
$ git add file1.txt
$ git commit -m "Update file1.txt"

# Use diffstat to analyze the Git diff
$ git diff HEAD~1 HEAD | diffstat
 file1.txt | 1 +
 1 file changed, 1 insertion(+)
```

In this example, we first initialized a new Git repository, created a new file, and committed it. We then made some changes to the file and created a new commit. Finally, we used `diffstat` to analyze the differences between the two commits.

The `diffstat` command can be a valuable tool when working with patch files and Git diffs, as it provides a concise summary of the changes made to the files.
