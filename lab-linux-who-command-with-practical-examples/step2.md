# Explore the Output of the who Command

In this step, we will dive deeper into the output of the `who` command and understand the different fields it provides.

Let's start by running the `who` command again:

```bash
who
```

Example output:

```
labex   pts/0        2023-04-11 09:15 (172.17.0.1)
```

The output of the `who` command consists of the following fields:

1. **Username**: The username of the logged-in user, in this case, `labex`.
2. **Terminal**: The terminal or session the user is logged in to, in this case, `pts/0`.
3. **Login Time**: The time the user logged in, in this case, `2023-04-11 09:15`.
4. **Remote Host**: The remote host from which the user has logged in, in this case, `(172.17.0.1)`.

Now, let's explore these fields in more detail:

**Username**: The username field displays the name of the user who is currently logged in. This is the same as the user you are logged in as, which in this case is `labex`.

**Terminal**: The terminal field shows the terminal or session the user is logged in to. In a typical Linux system, you might see values like `tty1`, `pts/0`, `pts/1`, etc. These represent different types of terminals or sessions.

**Login Time**: The login time field displays the date and time when the user logged in to the system.

**Remote Host**: The remote host field shows the IP address or hostname of the remote system from which the user has logged in. In this case, the user is logged in from the Docker container, so the remote host is shown as `(172.17.0.1)`.

Let's try another example to see how the output changes when multiple users are logged in:

```bash
sudo useradd -m testuser
sudo su - testuser
who
```

Example output:

```
labex   pts/0        2023-04-11 09:15 (172.17.0.1)
testuser pts/1        2023-04-11 09:20 (172.17.0.1)
```

In this example, we created a new user `testuser` and switched to that user. The `who` command now shows two users logged in: `labex` and `testuser`.
