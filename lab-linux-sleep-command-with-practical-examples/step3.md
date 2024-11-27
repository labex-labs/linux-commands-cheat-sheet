# Combine sleep with Other Linux Commands

In this step, you will learn how to combine the `sleep` command with other Linux commands to create more complex and automated workflows.

One common use case is to combine `sleep` with a loop to create a repeating task. For example, you can use `sleep` to pause between iterations of a loop that performs some action.

```
for i in {1..5}; do
    echo "Iteration $i"
    sleep 2
done
```

Example output:

```
[labex@project ~]$ for i in {1..5}; do echo "Iteration $i"; sleep 2; done
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
[labex@project ~]$
```

In this example, the script will print "Iteration X" and then pause for 2 seconds before moving on to the next iteration.

You can also use `sleep` in combination with other commands to create more advanced automation. For instance, you can use `sleep` to introduce a delay before running a command or to pause between steps in a multi-part process.

```
echo "Starting backup..."
sleep 5
tar -czf backup.tar.gz ~/project
echo "Backup complete!"
```

Example output:

```
[labex@project ~]$ echo "Starting backup..."
Starting backup...
[labex@project ~]$ sleep 5
[labex@project ~]$ tar -czf backup.tar.gz ~/project
[labex@project ~]$ echo "Backup complete!"
Backup complete!
[labex@project ~]$
```

In this example, the script will pause for 5 seconds before creating a compressed backup of the `~/project` directory.
