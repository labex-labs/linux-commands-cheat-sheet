# Automate Keyboard LED State Changes with Shell Scripts

In this step, we will learn how to automate the process of changing the keyboard LED states using shell scripts.

First, let's create a simple shell script to toggle the Num Lock LED:

```bash
nano toggle_num_lock.sh
```

Add the following content to the file:

```bash
#!/bin/bash

# Get the current Num Lock LED state
current_state=$(setleds -v | grep -o -E '[01]{8}' | awk '{print substr($1,7,1)}')

# Toggle the Num Lock LED state
if [ "$current_state" == "0" ]; then
  setleds +num
else
  setleds -num
fi
```

Save and close the file.

Make the script executable:

```bash
chmod +x toggle_num_lock.sh
```

Now, you can run the script to toggle the Num Lock LED state:

```bash
./toggle_num_lock.sh
```

Example output:

```
Led state set to 00000002
```

The script checks the current Num Lock LED state and toggles it accordingly.

You can also create a script to set multiple LED states at once. For example, let's create a script to set the Caps Lock and Scroll Lock LEDs:

```bash
nano set_caps_scroll.sh
```

Add the following content to the file:

```bash
#!/bin/bash

setleds +caps +scroll
```

Save and close the file.

Make the script executable:

```bash
chmod +x set_caps_scroll.sh
```

Now, you can run the script to set the Caps Lock and Scroll Lock LEDs to the "on" state:

```bash
./set_caps_scroll.sh
```

Example output:

```
Led state set to 00000005
```

These scripts can be easily integrated into your system configuration or startup scripts to automatically set the desired LED states when the system boots up or when a user logs in.
