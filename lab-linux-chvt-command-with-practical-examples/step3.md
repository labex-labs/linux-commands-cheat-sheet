# Automate Virtual Terminal Switching

In this final step, you will learn how to automate the process of switching between virtual terminals (VTs) using a simple script.

First, let's create a script that switches between the virtual terminals:

```
nano ~/project/switch_vt.sh
```

Add the following content to the script:

```bash
#!/bin/bash

for i in {1..6}; do
    sudo chvt $i
    echo "Switched to virtual terminal $i"
    sleep 2
done
```

This script will switch to each virtual terminal from 1 to 6, with a 2-second delay between each switch.

Save and close the file.

Make the script executable:

```
chmod +x ~/project/switch_vt.sh
```

Now, you can run the script to automatically switch between the virtual terminals:

```
~/project/switch_vt.sh
```

Example output:

```
Switched to virtual terminal 1
Switched to virtual terminal 2
Switched to virtual terminal 3
Switched to virtual terminal 4
Switched to virtual terminal 5
Switched to virtual terminal 6
```

You can also schedule this script to run automatically using a cron job or a systemd service, depending on your use case.
