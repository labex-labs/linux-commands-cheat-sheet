# Install the mlocate Package on Ubuntu 22.04

In this step, you will install the `mlocate` package on your Ubuntu 22.04 system. The `mlocate` package provides the `locate` command, which you will use to search for files and directories on your system.

To install the `mlocate` package, run the following commands:

```bash
sudo apt-get update
sudo apt-get install -y mlocate
```

The `apt-get update` command updates the package lists, and the `apt-get install` command installs the `mlocate` package.

Once the installation is complete, you can verify that the `locate` command is available by running the following command:

```bash
locate --version
```

This should display the version of the `locate` command.
