# Perform Practical Exercises with the mrd Command

In this final step, you will practice using the `mrd` command to manage directories in a real-world scenario.

Imagine you are working on a project that requires you to create and remove multiple directories regularly. Let's simulate this scenario and use the `mrd` command to manage the directories.

First, let's create a directory structure in the `~/project` directory:

```bash
$ cd ~/project
$ mkdir project1 project2 project3
$ mkdir project1/subdir1 project1/subdir2
$ mkdir project2/subdir1 project2/subdir2 project2/subdir3
$ mkdir project3/subdir1
```

Now, let's use the `mrd` command to remove the directories:

```bash
$ mrd project1 project2
Removed directory: project1/subdir1
Removed directory: project1/subdir2
Removed directory: project1
Removed directory: project2/subdir1
Removed directory: project2/subdir2
Removed directory: project2/subdir3
Removed directory: project2
```

Example output:

```
Removed directory: project1/subdir1
Removed directory: project1/subdir2
Removed directory: project1
Removed directory: project2/subdir1
Removed directory: project2/subdir2
Removed directory: project2/subdir3
Removed directory: project2
```

In this example, we used the `mrd` command to remove the `project1` and `project2` directories, including their subdirectories.

Now, let's create a new set of directories and use the `mrd` command with the `-r` option to remove them recursively:

```bash
$ mkdir project1 project2 project3
$ mkdir project1/subdir1 project1/subdir2
$ mkdir project2/subdir1 project2/subdir2 project2/subdir3
$ mkdir project3/subdir1

$ mrd -r project1 project2 project3
Removed directory: project1/subdir1
Removed directory: project1/subdir2
Removed directory: project1
Removed directory: project2/subdir1
Removed directory: project2/subdir2
Removed directory: project2/subdir3
Removed directory: project2
Removed directory: project3/subdir1
Removed directory: project3
```

Example output:

```
Removed directory: project1/subdir1
Removed directory: project1/subdir2
Removed directory: project1
Removed directory: project2/subdir1
Removed directory: project2/subdir2
Removed directory: project2/subdir3
Removed directory: project2
Removed directory: project3/subdir1
Removed directory: project3
```

In this example, we used the `-r` option to recursively remove the `project1`, `project2`, and `project3` directories, including all their subdirectories.

Remember, the `mrd` command is a powerful tool, but it should be used with caution. Always double-check the directories you're about to remove and consider using the interactive mode (`-i`) to confirm the removal of each directory.
