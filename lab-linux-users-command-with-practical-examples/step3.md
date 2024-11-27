# Implement Password Policy and User Management

In this final step, you will learn how to implement password policy and manage user accounts more effectively.

First, let's configure password policy using the `pam_cracklib` module. This module provides password strength checking and can enforce rules like minimum length, character requirements, and password history.

Open the `/etc/pam.d/common-password` file with a text editor:

```bash
sudo nano /etc/pam.d/common-password
```

And add the following lines:

```
password        requisite                       pam_cracklib.so retry=3 minlen=8 dcredit=-1 ucredit=-1 lcredit=-1 ocredit=-1
password        [success=1 default=ignore]      pam_unix.so obscure use_authtok try_first_pass sha512
```

This configuration requires passwords to be at least 8 characters long, and contain at least one digit, one uppercase, one lowercase, and one special character.

Next, let's create a new user and test the password policy:

```bash
sudo useradd -m -s /bin/bash newuser2
sudo passwd newuser2
```

Example output:

```
Enter new UNIX password:
Retype new UNIX password:
Sorry, passwords do not match.
Enter new UNIX password:
Retype new UNIX password:
BAD PASSWORD: it is based on a dictionary word
passwd: Authentication token manipulation error
```

As you can see, the password policy is enforced, and the user is not allowed to set a weak password.

Finally, let's explore some user management commands:

```bash
# Lock a user account
sudo usermod -L newuser2

# Unlock a user account
sudo usermod -U newuser2

# Expire a user's password
sudo passwd -e newuser2

# Set a user's password to never expire
sudo chage -M -1 newuser2
```

These commands allow you to manage user accounts more effectively, such as locking accounts, forcing password changes, and setting password expiration policies.
