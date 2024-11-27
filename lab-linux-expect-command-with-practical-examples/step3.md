# Handle Prompts and Responses in Expect Scripts

In this step, you will learn how to handle different types of prompts and responses in your `expect` scripts.

Let's create a new `expect` script that demonstrates handling various prompts and responses:

```tcl
#!/usr/bin/expect -f

set timeout 10
set host "example.com"
set user "myuser"
set password "mypassword"

spawn ssh $user@$host
expect {
    "password:" {
        send "$password\r"
        expect "$"
    }
    "yes/no" {
        send "yes\r"
        expect "$"
    }
    "$" {
        send "echo 'SSH login successful!'\r"
        expect "$"
    }
    timeout {
        puts "SSH login timed out"
        exit 1
    }
}

send "exit\r"
expect eof
```

In this script, we use the `expect` command with a block of `expect` statements to handle different types of prompts:

1. If the script encounters the "password:" prompt, it sends the password and waits for the shell prompt.
2. If the script encounters a "yes/no" prompt, it sends "yes" and waits for the shell prompt.
3. If the script encounters the shell prompt (`$`), it executes the `echo` command to verify the SSH login.
4. If the script encounters a timeout, it prints a message and exits with an error code.

Finally, the script sends the `exit` command to close the SSH session and waits for the end of the script (`expect eof`).

Save this script as `handle_prompts.exp` in your `~/project` directory.

Now, let's make the script executable and run it:

```bash
chmod +x ~/project/handle_prompts.exp
~/project/handle_prompts.exp
```

You should see the output:

```
SSH login successful!
```

This demonstrates how the `expect` command can be used to handle different types of prompts and responses in your scripts, making them more robust and adaptable.
