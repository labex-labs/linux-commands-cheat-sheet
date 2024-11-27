# Commit, Update, and Revert Changes in SVN

In this step, we will learn how to commit, update, and revert changes in the Subversion (SVN) repository.

First, let's create a new file in the SVN repository:

```bash
cd ~/project/svn-repo
echo "This is a test file." > test.txt
```

Now, we can add the new file to the SVN repository:

```bash
svn add test.txt
```

Example output:

```
A         test.txt
```

Next, let's commit the changes to the repository:

```bash
svn commit -m "Add test.txt file"
```

Example output:

```
Adding         test.txt
Transmitting file data .
Committed revision 1.
```

The `svn commit` command uploads the changes to the SVN repository with the provided commit message.

Now, let's make a change to the `test.txt` file and update the repository:

```bash
echo "Updated test file." >> test.txt
svn update
```

Example output:

```
U    test.txt
Updated to revision 2.
```

The `svn update` command downloads the latest changes from the repository and applies them to the local working copy.

Finally, let's revert the changes to the `test.txt` file:

```bash
svn revert test.txt
cat test.txt
```

Example output:

```
Reverted 'test.txt'
This is a test file.
```

The `svn revert` command discards the local changes and restores the file to the last committed state.

Through these operations, we have learned how to commit, update, and revert changes in the SVN repository.
