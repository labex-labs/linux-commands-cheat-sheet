# Initialize a Local SVN Repository

In this step, we will initialize a local Subversion (SVN) repository on the Ubuntu 22.04 environment.

First, let's create a directory to host the local SVN repository:

```bash
mkdir ~/project/svn-repo
```

Now, we can initialize the SVN repository in the `~/project/svn-repo` directory:

```bash
cd ~/project/svn-repo
svnadmin create .
```

Example output:

```
$ cd ~/project/svn-repo
$ svnadmin create .
```

The `svnadmin create .` command initializes a new Subversion repository in the current directory.

Next, let's verify the repository structure:

```bash
ls -l ~/project/svn-repo
```

Example output:

```
total 16
drwxr-xr-x 2 labex labex 4096 Apr 12 10:12 conf
drwxr-xr-x 2 labex labex 4096 Apr 12 10:12 db
drwxr-xr-x 2 labex labex 4096 Apr 12 10:12 format
drwxr-xr-x 2 labex labex 4096 Apr 12 10:12 hooks
drwxr-xr-x 2 labex labex 4096 Apr 12 10:12 locks
-rw-r--r-- 1 labex labex   12 Apr 12 10:12 README.txt
```

The repository structure includes several directories and a README.txt file, which are used to manage the repository configuration, database, and hooks.

Now, the local SVN repository is initialized and ready for use.
