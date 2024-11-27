# Install and Manage RPM Packages

In this step, we will learn how to install, upgrade, and remove RPM packages using the rpm command.

First, let's install a sample RPM package. We'll use the "htop" package, which is a popular interactive process viewer.

```bash
# Install the htop package
sudo rpm -i https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/h/htop-2.2.0-1.el7.x86_64.rpm
```

Example output:

```
Preparing...                          ################################# [100%]
Updating / installing...
   1:htop-2.2.0-1.el7                 ################################# [100%]
```

Now, let's verify that the package was installed correctly:

```bash
# Check the installed htop package
rpm -q htop
```

Example output:

```
htop-2.2.0-1.el7.x86_64
```

To upgrade the htop package to a newer version, we can use the `--upgrade` or `-U` option:

```bash
# Upgrade the htop package
sudo rpm -U https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/h/htop-3.0.5-1.el7.x86_64.rpm
```

Example output:

```
Preparing...                          ################################# [100%]
Updating / installing...
   1:htop-3.0.5-1.el7                 ################################# [100%]
```

Finally, let's remove the htop package using the `--erase` or `-e` option:

```bash
# Remove the htop package
sudo rpm -e htop
```

Example output:

```
Removed htop-3.0.5-1.el7.x86_64
```

In this step, you learned how to install, upgrade, and remove RPM packages using the rpm command. The key commands covered were `rpm -i` for installation, `rpm -U` for upgrade, and `rpm -e` for removal.
