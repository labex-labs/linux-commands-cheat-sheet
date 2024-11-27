# Remove Shared Memory Segments, Message Queues, and Semaphores

In this final step, we will practice removing shared memory segments, message queues, and semaphores using the `ipcrm` command.

First, let's create some IPC objects to work with:

```bash
# Create a shared memory segment
sudo ipcrm -m 0
sudo ipcrm -q 0
sudo ipcrm -s 0

# Create a new shared memory segment
sudo ipcrm -c -m
```

Example output:

```
Shared memory segment created
```

Now, let's remove the shared memory segment we just created:

```bash
sudo ipcrm -m 0
```

Example output:

```
Shared memory segment removed
```

To remove a message queue, we can use the `-q` option:

```bash
sudo ipcrm -q 0
```

Example output:

```
Message queue removed
```

And to remove a semaphore set, we use the `-s` option:

```bash
sudo ipcrm -s 0
```

Example output:

```
Semaphore array removed
```

Finally, let's remove all IPC objects at once using the `-a` option:

```bash
sudo ipcrm -a
```

Example output:

```
Shared memory segment removed
Semaphore array removed
Message queue removed
```
