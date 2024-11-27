# Identify the Hardware Architecture of Your Linux System

In this step, you will learn how to identify the hardware architecture of your Linux system using various commands.

First, let's use the `arch` command to display the system's hardware architecture:

```bash
arch
```

Example output:

```
x86_64
```

As you can see, the `arch` command returns `x86_64`, which indicates that the system is running on a 64-bit x86 architecture.

You can also use the `uname` command to get more detailed information about the system's hardware architecture:

```bash
uname -m
```

Example output:

```
x86_64
```

The `uname -m` command provides the same information as the `arch` command, but in a more human-readable format.

To get even more comprehensive system information, you can use the `uname -a` command:

```bash
uname -a
```

Example output:

```
Linux 8d8b1d2d9f13 5.15.0-1023-aws #25~20.04.1-Ubuntu SMP Fri Mar 31 09:48:36 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```

The `uname -a` command displays the kernel version, machine hardware name, and the hardware architecture, among other information.

Finally, you can use the `lscpu` command to get detailed information about the CPU architecture:

```bash
lscpu
```

Example output:

```
Architecture:                    x86_64
CPU op-mode(s):                  32-bit, 64-bit
Byte Order:                      Little Endian
CPU(s):                          2
On-line CPU(s) list:             0,1
Thread(s) per core:              1
Core(s) per socket:              2
Socket(s):                       1
NUMA node(s):                    1
Vendor ID:                       GenuineIntel
CPU family:                      6
Model:                           158
Model name:                      Intel(R) Xeon(R) CPU E5-2686 v4 @ 2.30GHz
Stepping:                        3
CPU MHz:                         2300.000
BogoMIPS:                        4589.84
Virtualization:                  VT-x
L1d cache:                       32K
L1i cache:                       32K
L2 cache:                        256K
L3 cache:                        46080K
NUMA node0 CPU(s):               0,1
Vulnerability Itlb_multihit:     KVM: Mitigation: Split huge pages
Vulnerability L1tf:              Mitigation; PTE Inversion; VMX conditional cache flushes, SMT vulnerable
Vulnerability Mds:               Mitigation; Clear CPU buffers; SMT vulnerable
Vulnerability Meltdown:          Mitigation; PTI
Vulnerability Spec_store_bypass: Mitigation; Speculative Store Bypass disabled via prctl and seccomp
Vulnerability Spectre_v1:        Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre_v2:        Mitigation; Enhanced IBRS, IBPB: conditional, RSB filling
Vulnerability Srbds:             Mitigation; TSX disabled
Vulnerability Tsx_async_abort:   Mitigation; TSX disabled
```

The `lscpu` command provides detailed information about the CPU architecture, including the CPU model, cache sizes, and vulnerability mitigations.

By using these commands, you can easily identify the hardware architecture of your Linux system.
