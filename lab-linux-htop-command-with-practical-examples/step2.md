# Navigating and Interacting with htop

In this step, you will learn how to navigate and interact with the `htop` command to monitor and manage your system processes.

First, let's start the `htop` command:

```bash
htop
```

You should see the `htop` interface displayed in your terminal. Here's a quick overview of the different sections and how to interact with them:

1. **Process List**: This is the main section that displays the running processes on your system. You can navigate through the list using the arrow keys, and sort the processes by various criteria (CPU usage, memory usage, etc.) by pressing the corresponding function key.

2. **Header**: The header at the top provides an overview of system resources, such as CPU, memory, and swap usage.

3. **Footer**: The footer at the bottom displays various shortcuts and commands you can use to interact with `htop`.

Some common commands and shortcuts to know:

- **F1**: Show the help menu
- **F2**: Open the setup menu to customize `htop` settings
- **F3/F4**: Search for a process by name or command
- **F5**: Switch between tree and list view
- **F6**: Sort the process list
- **F7/F8**: Increase/decrease process priority (nice value)
- **F9**: Send a signal (e.g., terminate) to a selected process
- **F10**: Exit `htop`
- **h**: Show/hide the help footer
- **u**: Show only processes owned by the current user
- **t**: Show the tree view
- **k**: Kill the selected process

Try out some of these commands and explore the `htop` interface. Remember, you can always press **F1** to access the help menu for more information.
