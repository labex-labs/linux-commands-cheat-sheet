# Explore the Process Hierarchy with pstree

In this step, we will dive deeper into the process hierarchy using the `pstree` command and explore various options to customize the output.

First, let's see how we can display the process hierarchy in a more compact way using the `-c` option:

```
$ pstree -c
systemd─┬─ModemManager─┬─dhclient
        │             └─2*[{ModemManager}]
        ├─NetworkManager─┬─dhclient
        │                └─2*[{NetworkManager}]
        ├─accounts-daemon───2*[{accounts-daemon}]
        ├─apache2─┬─apache2
        │         └─2*[apache2]
        ├─atd
        ├─cron
        ├─dbus-daemon
        ├─dockerd─┬─containerd─┬─containerd-shim─┬─bash
        │         │            │                └─3*[{containerd-shim}]
        │         │            └─6*[{containerd}]
        │         └─7*[{dockerd}]
        ├─gdm3─┬─Xorg
        │      └─gnome-session-b─┬─gnome-shell
        │                        ├─ibus-daemon─┬─ibus-engine-sim
        │                        │             └─2*[{ibus-daemon}]
        │                        └─2*[{gnome-session-b}]
        ├─irqbalance
        ├─kerneloops
        ├─kube-proxy
        ├─kubelet
        ├─lightdm─┬─Xorg
        │         └─lightdm───sh───fluxbox
        ├─lxcfs
        ├─lxd─┬─lxd
        │     └─2*[{lxd}]
        ├─polkitd───2*[{polkitd}]
        ├─rsyslogd
        ├─snapd───10*[{snapd}]
        ├─ssh-agent
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-networkd
        ├─systemd-resolve
        ├─systemd-timesyn
        ├─systemd-udevd
        ├─udisksd───3*[{udisksd}]
        ├─unattended-upgr───2*[{unattended-upgr}]
        ├─upowerd───2*[{upowerd}]
        ├─user-manager───3*[{user-manager}]
        └─whoopsie───2*[{whoopsie}]
```

The `-c` option compacts the output, making it easier to read and understand the process hierarchy.

Next, let's see how we can filter the output to focus on specific processes. For example, to show only the processes related to the `docker` service, we can use the `-a` option:

```
$ pstree -a | grep docker
dockerd─┬─containerd─┬─containerd-shim─┬─bash
        │            │                └─3*[containerd-shim]
        │            └─6*[containerd]
        └─7*[dockerd]
```

This shows the `docker` processes and their child processes.

You can also use the `-p` option to display the process IDs (PIDs) instead of the process names:

```
$ pstree -p | grep docker
dockerd(688)─┬─containerd(701)─┬─containerd-shim(702)─┬─bash(703)
             │                 │                     └─3*[containerd-shim(704,705,706)]
             │                 └─6*[containerd(707,708,709,710,711,712)]
             └─7*[dockerd(689,690,691,692,693,694,695)]
```

This can be useful when you need to identify specific processes by their PIDs.

Finally, let's see how we can display the process hierarchy for a specific user. To do this, we can use the `-u` option followed by the username:

```
$ pstree -u labex
systemd─┬─ModemManager─┬─dhclient
        │             └─2*[{ModemManager}]
        ├─NetworkManager─┬─dhclient
        │                └─2*[{NetworkManager}]
        ├─accounts-daemon───2*[{accounts-daemon}]
        ├─apache2─┬─apache2
        │         └─2*[apache2]
        ├─atd
        ├─cron
        ├─dbus-daemon
        ├─dockerd─┬─containerd─┬─containerd-shim─┬─bash
        │         │            │                └─3*[{containerd-shim}]
        │         │            └─6*[{containerd}]
        │         └─7*[{dockerd}]
        ├─gdm3─┬─Xorg
        │      └─gnome-session-b─┬─gnome-shell
        │                        ├─ibus-daemon─┬─ibus-engine-sim
        │                        │             └─2*[{ibus-daemon}]
        │                        └─2*[{gnome-session-b}]
        ├─irqbalance
        ├─kerneloops
        ├─kube-proxy
        ├─kubelet
        ├─lightdm─┬─Xorg
        │         └─lightdm───sh───fluxbox
        ├─lxcfs
        ├─lxd─┬─lxd
        │     └─2*[{lxd}]
        ├─polkitd───2*[{polkitd}]
        ├─rsyslogd
        ├─snapd───10*[{snapd}]
        ├─ssh-agent
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-networkd
        ├─systemd-resolve
        ├─systemd-timesyn
        ├─systemd-udevd
        ├─udisksd───3*[{udisksd}]
        ├─unattended-upgr───2*[{unattended-upgr}]
        ├─upowerd───2*[{upowerd}]
        ├─user-manager───3*[{user-manager}]
        └─whoopsie───2*[{whoopsie}]
```

This shows the process hierarchy for the `labex` user.

The `pstree` command provides a wealth of information about the process hierarchy on your Linux system. By using the various options, you can customize the output to suit your needs and gain a deeper understanding of your system's processes.
