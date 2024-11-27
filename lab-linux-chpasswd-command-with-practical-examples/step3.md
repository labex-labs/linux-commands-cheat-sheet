# Automating Password Changes with Shell Scripts

In this final step, we will learn how to automate the process of changing user passwords using shell scripts. This can be useful when you need to regularly update passwords for a large number of users, such as in a corporate environment.

First, let's create a simple shell script that uses the `chpasswd` command to change user passwords:

```bash
#!/bin/bash

# Define the list of users and their new passwords
users_and_passwords=(
  "labex:newpassword1"
  "labuser:newpassword2"
)

# Loop through the list and update the passwords
for user_and_password in "${users_and_passwords[@]}"; do
  user=$(echo "$user_and_password" | cut -d':' -f1)
  password=$(echo "$user_and_password" | cut -d':' -f2)
  echo "$user:$password" | sudo chpasswd
done
```

Save this script as `update_passwords.sh` in the `~/project` directory and make it executable:

```
chmod +x ~/project/update_passwords.sh
```

Now, you can run the script to update the passwords for the users:

```
~/project/update_passwords.sh
```

Example output:

```
labex:newpassword1
labuser:newpassword2
```

The script reads the list of users and their new passwords, then uses the `chpasswd` command to update the passwords in batch mode.
