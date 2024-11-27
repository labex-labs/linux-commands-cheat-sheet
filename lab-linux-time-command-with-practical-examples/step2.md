# Measure Execution Time of Commands

In this step, you will learn how to use the `time` command to measure the execution time of various commands and scripts.

Let's start by measuring the execution time of a simple command:

```bash
time echo "Hello, World!"
```

Example output:

```
Hello, World!

real    0m0.005s
user    0m0.001s
sys     0m0.002s
```

As you can see, the `time` command provides detailed information about the execution time of the `echo` command.

Next, let's measure the execution time of a simple script:

```bash
cat > my_script.sh <<EOF
#!/bin/bash
sleep 3
echo "Script completed"
EOF
chmod +x my_script.sh
time ./my_script.sh
```

Example output:

```
Script completed

real    0m3.005s
user    0m0.001s
sys     0m0.002s
```

In this example, the `time` command measures the execution time of the `my_script.sh` script, which includes a `sleep 3` command.

The `time` command can also be used to measure the performance of more complex commands or scripts, such as compiling a program or running a data analysis task. This information can be valuable for identifying performance bottlenecks and optimizing your code.
