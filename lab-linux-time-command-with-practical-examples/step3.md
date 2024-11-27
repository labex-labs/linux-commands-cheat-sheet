# Analyze Command Performance with time

In this step, you will learn how to use the `time` command to analyze the performance of commands and identify potential bottlenecks.

Let's start by running a simple command that performs a CPU-intensive task:

```bash
time python -c "import time; time.sleep(5)"
```

Example output:

```
real    0m5.005s
user    0m0.001s
sys     0m0.001s
```

The output shows that the Python script took 5 seconds to complete, and the majority of the time was spent in the `real` (wall clock) time, indicating that the task was CPU-bound.

Now, let's run a command that performs an I/O-intensive task:

```bash
time dd if=/dev/zero of=output.txt bs=1M count=100
```

Example output:

```
100+0 records in
100+0 records out
104857600 bytes (105 MB, 100 MiB) copied, 0.0927554 s, 1.1 GB/s

real    0m0.094s
user    0m0.001s
sys     0m0.092s
```

In this case, the majority of the time was spent in the `sys` (system) time, indicating that the task was I/O-bound.

By analyzing the `real`, `user`, and `sys` times, you can identify the type of resource (CPU or I/O) that is the bottleneck for a particular command or script. This information can be used to optimize the performance of your applications.
