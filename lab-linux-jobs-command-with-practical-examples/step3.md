# Practical Examples of Using jobs Command

In this final step, we will explore some practical examples of using the `jobs` command.

1. **Monitoring Background Processes**

   Let's start a few background processes and use the `jobs` command to monitor them:

   ```bash
   sleep 60 &
   sleep 120 &
   sleep 180 &
   jobs
   ```

   Example output:

   ```
   [1] Running                 sleep 60 &
   [2] Running                 sleep 120 &
   [3] Running                 sleep 180 &
   ```

2. **Suspending and Resuming Processes**

   Suspend the second background process:

   ```bash
   kill -STOP %2
   jobs
   ```

   Example output:

   ```
   [1] Running                 sleep 60 &
   [2]+ Stopped                sleep 120
   [3] Running                 sleep 180 &
   ```

   Resume the suspended process:

   ```bash
   kill -CONT %2
   jobs
   ```

   Example output:

   ```
   [1] Running                 sleep 60 &
   [2]- Running                sleep 120 &
   [3] Running                 sleep 180 &
   ```

3. **Terminating Processes**

   Terminate the third background process:

   ```bash
   kill -TERM %3
   jobs
   ```

   Example output:

   ```
   [1] Running                 sleep 60 &
   [2]- Running                sleep 120 &
   ```

In these examples, we've demonstrated how to use the `jobs` command to monitor, suspend, resume, and terminate background processes. This knowledge will be useful when managing long-running tasks and processes in your Linux environment.
