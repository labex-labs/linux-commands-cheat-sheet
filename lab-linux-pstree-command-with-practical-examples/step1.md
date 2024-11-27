# Understand the pstree Command

In this step, we will learn about the `pstree` command, which is a useful tool for visualizing the process hierarchy on a Linux system.

The `pstree` command displays a tree-like representation of the running processes, showing the parent-child relationships between them. This can be helpful for understanding the structure and dependencies of your system's processes.

To start, let's run the `pstree` command in the terminal:

```
$ pstree
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

The output shows a hierarchical view of the running processes, with the `systemd` process at the top as the parent of many other processes.

You can customize the output of `pstree` using various options. For example, to show only the process IDs (PIDs) instead of the process names, you can use the `-p` option:

```
$ pstree -p
systemd(1)─┬─ModemManager(577)─┬─dhclient(593)
          │                   └─2*[{ModemManager}(580,581)]
          ├─NetworkManager(572)─┬─dhclient(590)
          │                    └─2*[{NetworkManager}(573,574)]
          ├─accounts-daemon(531)───2*[{accounts-daemon}(532,533)]
          ├─apache2(688)─┬─apache2(689)
          │             └─2*[apache2(690,691)]
          ├─atd(544)
          ├─cron(545)
          ├─dbus-daemon(530)
          ├─dockerd(688)─┬─containerd(701)─┬─containerd-shim(702)─┬─bash(703)
          │             │                 │                       └─3*[{containerd-shim}(704,705,706)]
          │             │                 └─6*[{containerd}(707,708,709,710,711,712)]
          │             └─7*[{dockerd}(689,690,691,692,693,694,695)]
          ├─gdm3(575)─┬─Xorg(586)
          │           └─gnome-session-b(587)─┬─gnome-shell(588)
          │                                 ├─ibus-daemon(589)─┬─ibus-engine-sim(592)
          │                                 │                  └─2*[{ibus-daemon}(590,591)]
          │                                 └─2*[{gnome-session-b}(595,596)]
          ├─irqbalance(543)
          ├─kerneloops(546)
          ├─kube-proxy(697)
          ├─kubelet(696)
          ├─lightdm(576)─┬─Xorg(585)
          │              └─lightdm(577)───sh(578)───fluxbox(579)
          ├─lxcfs(542)
          ├─lxd(698)─┬─lxd(699)
          │         └─2*[{lxd}(700,701)]
          ├─polkitd(534)───2*[{polkitd}(535,536)]
          ├─rsyslogd(541)
          ├─snapd(694)───10*[{snapd}(695,696,697,698,699,700,701,702,703,704)]
          ├─ssh-agent(587)
          ├─systemd-journal(526)
          ├─systemd-logind(529)
          ├─systemd-networkd(527)
          ├─systemd-resolve(528)
          ├─systemd-timesyn(540)
          ├─systemd-udevd(525)
          ├─udisksd(537)───3*[{udisksd}(538,539,540)]
          ├─unattended-upgr(547)───2*[{unattended-upgr}(548,549)]
          ├─upowerd(535)───2*[{upowerd}(536,537)]
          ├─user-manager(586)───3*[{user-manager}(587,588,589)]
          └─whoopsie(550)───2*[{whoopsie}(551,552)]
```

This shows the process IDs instead of the process names.

You can also use the `-u` option to display the user running each process:

```
$ pstree -u
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

This shows the user running each process.

The `pstree` command can be a valuable tool for understanding the process hierarchy on your Linux system. In the next step, we'll explore more ways to use `pstree` to gain insights into your system's processes.
