# Synchronize Group Passwords with the grpconv Command

In this step, we will learn how to synchronize group passwords with the `grpconv` command.

First, let's create a new group called "finance" and add a password to it:

```
$ sudo groupadd finance
$ sudo gpasswd -a finance
```

This will prompt you to enter a password for the "finance" group.

Now, let's verify the group password information in the `/etc/gshadow` file:

```
$ sudo cat /etc/gshadow
finance:$6$Tn7Xt.../Ej2WuBDZnW5Nh2Iu2:labex,user1,user2::
```

As you can see, the group password is stored in the `/etc/gshadow` file.

Next, let's synchronize the group password file with the shadow group file using the `grpconv` command:

```
$ sudo grpconv
```

This will ensure that the group passwords in the `/etc/gshadow` file are in sync with the group information in the `/etc/group` file.

To verify the synchronization, let's check the `/etc/gshadow` file again:

```
$ sudo cat /etc/gshadow
finance:!::labex,user1,user2::
```

Now, the group password is replaced with a "!" character, indicating that the group password is locked and no longer stored in the `/etc/gshadow` file.
