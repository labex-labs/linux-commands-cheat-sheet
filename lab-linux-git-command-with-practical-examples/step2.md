# Add and Commit Files to the Git Repository

In this step, you will learn how to add files to the Git repository and commit the changes.

First, let's create a new file in the project directory:

```bash
echo "This is a test file." > test.txt
```

Now, let's check the status of the Git repository:

```bash
git status
```

Example output:

```
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        test.txt

nothing added to commit but untracked files present (use "git add" to track)
```

As you can see, the `test.txt` file is listed as an untracked file. To add it to the Git repository, use the `git add` command:

```bash
git add test.txt
```

Now, let's check the status again:

```bash
git status
```

Example output:

```
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   test.txt
```

The file is now staged and ready to be committed. To commit the changes, use the `git commit` command:

```bash
git commit -m "Add test.txt file"
```

Example output:

```
[master (root-commit) 1234567] Add test.txt file
 1 file changed, 1 insertion(+)
 create mode 100644 test.txt
```

The `-m` flag allows you to provide a commit message, which is a good practice to describe the changes you've made.

Now your file has been added and committed to the Git repository.
