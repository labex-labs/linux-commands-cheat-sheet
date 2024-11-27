# Customize the mingetty Login Prompt

In this final step, we will explore how to customize the login prompt displayed by the mingetty command.

By default, the mingetty login prompt displays a simple message, such as "Ubuntu 22.04 LTS" or the system hostname. However, you can easily modify this prompt to display custom information or branding.

To customize the mingetty login prompt, we will again use the custom configuration file we created in the previous step. Open the mingetty.conf file in the nano editor:

```bash
nano ~/project/mingetty.conf
```

In this file, locate the line that starts with "1:2345:respawn:/sbin/mingetty" and add the `--login-prompt` option followed by your desired prompt message:

```
1:2345:respawn:/sbin/mingetty --autologin labex --login-prompt "Welcome to the Linux Lab!" tty1
```

In this example, the login prompt will be set to "Welcome to the Linux Lab!". You can customize the message to suit your needs.

Save the changes to the mingetty.conf file and restart the mingetty service using the updated configuration:

```bash
sudo mingetty --config ~/project/mingetty.conf
```

Now, when you switch to the first virtual terminal (Ctrl+Alt+F1), you should see the customized login prompt.
