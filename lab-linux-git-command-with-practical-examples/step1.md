# Initialize a Git Repository

In this step, you will learn how to initialize a new Git repository and set up your local development environment.

First, navigate to the project directory where you want to create the Git repository:

```bash
cd ~/project
```

Next, initialize a new Git repository using the `git init` command:

```bash
git init
```

Example output:

```
Initialized empty Git repository in /home/labex/project/.git/
```

The `git init` command creates a new `.git` directory in your project folder, which is where Git stores all the version control information.

Next, let's configure your Git user name and email address. These settings will be associated with any commits you make in this repository:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

This sets your user name and email globally for all Git repositories on your system. You can also set these values at the repository level if needed.

Now your Git repository is initialized and configured. In the next step, you will learn how to add and commit files to the repository.
