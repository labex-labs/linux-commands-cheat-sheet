# Understand the Purpose of update-rc.d Command

In this step, you will learn about the purpose and usage of the `update-rc.d` command in Linux. The `update-rc.d` command is used to manage the automatic startup of services at system boot. It allows you to enable, disable, or modify the startup priorities of system services.

The `update-rc.d` command is particularly useful when you need to ensure that a service starts automatically when the system boots up, or when you want to change the order in which services are started.

Let's start by understanding the basic syntax of the `update-rc.d` command:

```
sudo update-rc.d [service_name] defaults [priority]
```

Here, `[service_name]` is the name of the service you want to manage, and `[priority]` is the startup priority for the service. The `defaults` argument tells `update-rc.d` to use the default runlevels (2, 3, 4, and 5) for the service.

Example output:

```
sudo update-rc.d nginx defaults
```

This command will enable the `nginx` service to start automatically at system boot, using the default runlevels and startup priority.
