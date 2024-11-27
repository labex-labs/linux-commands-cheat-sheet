# Troubleshooting Network Issues with nmcli

In this step, we will learn how to use the `nmcli` command to troubleshoot network issues on our Linux system.

Let's start by simulating a network issue by disconnecting the `my-ethernet` connection we created in the previous step:

```bash
sudo nmcli connection down my-ethernet
```

Now, let's check the network status:

```bash
nmcli device status
```

You should see that the `eth0` interface is now in the "disconnected" state.

To troubleshoot the issue, we can use the `nmcli` command to get more detailed information about the connection:

```bash
nmcli connection show my-ethernet
```

This will display the configuration details of the `my-ethernet` connection, including any errors or issues that may be preventing the connection from being established.

If you want to see the logs related to the network connection, you can use the `nmcli` command to monitor the NetworkManager service:

```bash
sudo nmcli monitor
```

This will start monitoring the NetworkManager service and display any relevant log messages in real-time. You can press `Ctrl+C` to stop the monitoring.

Finally, to reconnect the `my-ethernet` connection, you can use the following command:

```bash
sudo nmcli connection up my-ethernet
```

This should bring the `eth0` interface back to the "connected" state.
