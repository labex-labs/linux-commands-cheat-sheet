# Filter and Customize the pstree Output

In this final step, we will explore more ways to filter and customize the output of the `pstree` command to suit your specific needs.

One common use case is to focus on a specific process or process group. For example, let's say you want to see the process hierarchy for the `systemd` process and its child processes. You can use the `-s` option to do this:

```
$ pstree -s systemd
systemd
```

This shows the `systemd` process and its immediate child processes.

You can also use the `-g` option to group processes by their process group ID (PGID) instead of the process hierarchy:

```
$ pstree -g
1-systemd
  ├─577-ModemManager
  │   ├─593-dhclient
  │   └─2*[580-{ModemManager},581-{ModemManager}]
  ├─572-NetworkManager
  │   ├─590-dhclient
  │   └─2*[573-{NetworkManager},574-{NetworkManager}]
  ├─531-accounts-daemon
  │   ├─532-{accounts-daemon}
  │   └─533-{accounts-daemon}
  ├─688-apache2
  │   ├─689-apache2
  │   └─2*[690-apache2,691-apache2]
  ├─544-atd
  ├─545-cron
  ├─530-dbus-daemon
  ├─688-dockerd
  │   ├─701-containerd
  │   │   ├─702-containerd-shim
  │   │   │   └─703-bash
  │   │   └─6*[707-{containerd},708-{containerd},709-{containerd},710-{containerd},711-{containerd},712-{containerd}]
  │   └─7*[689-{dockerd},690-{dockerd},691-{dockerd},692-{dockerd},693-{dockerd},694-{dockerd},695-{dockerd}]
  ├─575-gdm3
  │   ├─586-Xorg
  │   └─587-gnome-session-b
  │       ├─588-gnome-shell
  │       ├─589-ibus-daemon
  │       │   ├─592-ibus-engine-sim
  │       │   └─2*[590-{ibus-daemon},591-{ibus-daemon}]
  │       └─2*[595-{gnome-session-b},596-{gnome-session-b}]
  ├─543-irqbalance
  ├─546-kerneloops
  ├─697-kube-proxy
  ├─696-kubelet
  ├─576-lightdm
  │   ├─585-Xorg
  │   └─577-lightdm
  │       ├─578-sh
  │       └─579-fluxbox
  ├─542-lxcfs
  ├─698-lxd
  │   ├─699-lxd
  │   └─2*[700-{lxd},701-{lxd}]
  ├─534-polkitd
  │   ├─535-{polkitd}
  │   └─536-{polkitd}
  ├─541-rsyslogd
  ├─694-snapd
  │   └─10*[695-{snapd},696-{snapd},697-{snapd},698-{snapd},699-{snapd},700-{snapd},701-{snapd},702-{snapd},703-{snapd},704-{snapd}]
  ├─587-ssh-agent
  ├─526-systemd-journal
  ├─529-systemd-logind
  ├─527-systemd-networkd
  ├─528-systemd-resolve
  ├─540-systemd-timesyn
  ├─525-systemd-udevd
  ├─537-udisksd
  │   ├─538-{udisksd}
  │   ├─539-{udisksd}
  │   └─540-{udisksd}
  ├─547-unattended-upgr
  │   ├─548-{unattended-upgr}
  │   └─549-{unattended-upgr}
  ├─535-upowerd
  │   ├─536-{upowerd}
  │   └─537-{upowerd}
  ├─586-user-manager
  │   ├─587-{user-manager}
  │   ├─588-{user-manager}
  │   └─589-{user-manager}
  └─550-whoopsie
      ├─551-{whoopsie}
      └─552-{whoopsie}
```

This groups the processes by their process group ID, which can be useful for understanding the relationships between processes.

You can also use the `-H` option to highlight the current process in the output:

```
$ pstree -H $$
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

This highlights the current process (the shell process in this case) in the output.

The `pstree` command provides a wealth of options for filtering and customizing the output to suit your specific needs. By exploring these options, you can gain a deeper understanding of the process hierarchy on your Linux system and more effectively monitor and manage your system's processes.
