# Explore the Basic Usage of the whoami Command

In this step, you will explore the basic usage of the `whoami` command and learn how to leverage it in different scenarios.

First, let's confirm the current user by running the `whoami` command again:

```bash
whoami
```

Example output:

```
labex
```

As you can see, the `whoami` command correctly identifies the current user as `labex`.

Now, let's try using the `whoami` command in a few different ways:

1. Display the user's username in a sentence:

```bash
echo "The current user is: $(whoami)"
```

Example output:

```
The current user is: labex
```

2. Use the `whoami` command in a shell script:

```bash
#!/bin/bash
echo "The current user is: $(whoami)"
```

Save the script as `check_user.sh` and make it executable:

```bash
chmod +x check_user.sh
```

Run the script:

```bash
./check_user.sh
```

Example output:

```
The current user is: labex
```

3. Combine the `whoami` command with other Linux commands:

```bash
id $(whoami)
```

Example output:

```
uid=1000(labex) gid=1000(labex) groups=1000(labex),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lxd),128(lxcfs),129(lxd-agent),999(docker)
```

This command uses the `id` command to display the user ID, group ID, and group memberships of the user returned by the `whoami` command.

By exploring these basic usage examples, you can see how the `whoami` command can be a valuable tool for user identification and management in your Linux environment.
