# Explore Git Branch Management

In this step, you will learn how to work with Git branches, which are essential for managing different versions of your project.

First, let's check the current branch:

```bash
git branch
```

Example output:

```
* master
```

As you can see, you are currently on the `master` branch.

Now, let's create a new branch called `feature/new-page`:

```bash
git checkout -b feature/new-page
```

Example output:

```
Switched to a new branch 'feature/new-page'
```

The `git checkout -b` command creates a new branch and switches to it.

Let's make some changes to the `test.txt` file in the new branch:

```bash
echo "Adding a new line to the test file." >> test.txt
```

Now, let's check the status:

```bash
git status
```

Example output:

```
On branch feature/new-page
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   test.txt

no changes added to commit (use "git add" and/or "git commit -a")
```

The changes are made in the `feature/new-page` branch, but not yet committed.

Let's commit the changes:

```bash
git add test.txt
git commit -m "Add new line to test.txt"
```

Example output:

```
[feature/new-page 7890abc] Add new line to test.txt
 1 file changed, 1 insertion(+)
```

Now, let's switch back to the `master` branch:

```bash
git checkout master
```

Example output:

```
Switched to branch 'master'
```

You can see that the changes made in the `feature/new-page` branch are not present in the `master` branch.

This is the basic workflow of working with Git branches. You can create, switch, and merge branches as needed to manage different versions of your project.
