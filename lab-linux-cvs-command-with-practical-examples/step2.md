# Creating a CVS Repository and Checking Out a Project

In this step, we will create a new CVS repository and check out a project.

First, let's create a new CVS repository in the `/tmp/cvsrepo` directory:

```bash
sudo mkdir /tmp/cvsrepo
sudo cvs -d /tmp/cvsrepo init
```

Example output:

```
cvs server: creating directory /tmp/cvsrepo/CVSROOT
cvs server: done
```

The `cvs init` command initializes a new CVS repository in the specified directory.

Next, let's create a new project directory and check out the project from the CVS repository:

```bash
cd ~/project
cvs -d /tmp/cvsrepo checkout myproject
```

Example output:

```
cvs checkout: Updating myproject
U myproject/README.md
```

The `cvs checkout` command creates a new directory `myproject` and checks out the project files from the CVS repository.

Now, let's navigate to the project directory and list the files:

```bash
cd myproject
ls -l
```

Example output:

```
total 4
-rw-r--r-- 1 labex labex 11 Apr 18 12:34 README.md
```

You can see that the `README.md` file has been checked out from the CVS repository.
