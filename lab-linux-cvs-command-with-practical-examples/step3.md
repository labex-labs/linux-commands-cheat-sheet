# Committing Changes to the CVS Repository

In this step, we will learn how to commit changes to the CVS repository.

First, let's navigate to the project directory and make some changes to the `README.md` file:

```bash
cd ~/project/myproject
nano README.md
```

Add the following content to the `README.md` file:

```
# My CVS Project
This is a sample project managed by CVS.
```

Save the changes and exit the nano editor.

Now, let's add the changes to the CVS repository:

```bash
cvs add README.md
cvs commit -m "Added project description"
```

Example output:

```
cvs add: scheduling file `README.md' for addition
cvs commit: Examining .
cvs commit: Committing file README.md
RCS file: /tmp/cvsrepo/myproject/README.md,v
done
Checking in README.md;
/tmp/cvsrepo/myproject/README.md,v  <--  README.md
initial revision: 1.1
done
```

The `cvs add` command schedules the `README.md` file for addition to the CVS repository, and the `cvs commit` command commits the changes with the provided commit message.

To verify the changes, let's update the local copy of the project:

```bash
cvs update
```

Example output:

```
cvs update: Updating .
U README.md
```

The `cvs update` command updates the local project directory with the changes committed to the CVS repository.
