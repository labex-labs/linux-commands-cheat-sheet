# Introduction to dstat Command

In this step, we will introduce the dstat command, a versatile system monitoring tool for Linux. The dstat command provides detailed information about various system resources, including CPU, memory, network, disk, and more.

First, let's install the dstat package on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y dstat
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  python3-dstat
The following NEW packages will be installed:
  dstat python3-dstat
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 72.0 kB of archives.
After this operation, 278 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Now, let's run the dstat command to see the system's real-time statistics:

```bash
dstat
```

Example output:

```
----total-cpu-usage---- -dsk/total- -net/total- ---paging-- ---system--
usr sys idl wai hiq siq| read  writ| recv  send|  in   out | int   csw
  4   1  95   0   0   0|  45k   36k|   0     0 |   0     0 |  28   58
  3   1  96   0   0   0|  12k   16k|   0     0 |   0     0 |  27   57
  3   1  96   0   0   0|  12k   16k|   0     0 |   0     0 |  27   57
  3   1  96   0   0   0|  12k   16k|   0     0 |   0     0 |  27   57
  3   1  96   0   0   0|  12k   16k|   0     0 |   0     0 |  27   57
```

The dstat command provides a real-time overview of various system resources, including CPU utilization, disk I/O, network traffic, and more. You can customize the output by specifying different options, such as `dstat --cpu --mem --disk --net`.

In the next steps, we will explore how to use dstat to monitor specific system metrics in more detail.
