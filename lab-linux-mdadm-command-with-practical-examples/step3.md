# Manage and Monitor the Software RAID Array

In this final step, you will learn how to manage and monitor the software RAID array you created in the previous step.

First, let's add a new disk to the RAID 5 array:

```bash
sudo dd if=/dev/zero of=~/project/disk5.img bs=1M count=100
sudo mdadm /dev/md0 --add ~/project/disk5.img
```

Example output:

```
mdadm: added /home/labex/project/disk5.img
```

Now, let's check the status of the RAID array again:

```bash
sudo mdadm --detail /dev/md0
```

Example output:

```
/dev/md0:
           Version : 1.2
     Creation Time : Tue Apr 25 15:25:35 2023
        Raid Level : raid5
        Array Size : 407200 (397.66 MiB 417.23 MB)
     Used Dev Size : 100000 (97.66 MiB 102.40 MB)
      Raid Devices : 5
     Total Devices : 5
       Persistence : Superblock is persistent

       Update Time : Tue Apr 25 15:26:16 2023
             State : clean, degraded, recovering
    Active Devices : 4
   Working Devices : 5
    Failed Devices : 0
     Spare Devices : 1

            Layout : left-symmetric
        Chunk Size : 512K

Consistency Policy : resync

              Name : localhost.localdomain:0  (local to host localhost.localdomain)
              UUID : 6d2d9c1c:b4d2f9c4:8d6f0e8f:e0b0d4d5
            Events : 6

    Number   Major   Minor   RaidDevice State
       0       0        0        0      active sync   /home/labex/project/disk1.img
       1       0        1        1      active sync   /home/labex/project/disk2.img
       2       0        2        2      active sync   /home/labex/project/disk3.img
       3       0        3        3      active sync   /home/labex/project/disk4.img
       4       0        4        -      spare   /home/labex/project/disk5.img
```

The output shows that the new disk `/home/labex/project/disk5.img` has been added as a spare device to the RAID 5 array.

Next, let's simulate a disk failure by removing one of the devices from the RAID array:

```bash
sudo mdadm /dev/md0 --fail /home/labex/project/disk1.img
sudo mdadm /dev/md0 --remove /home/labex/project/disk1.img
```

Example output:

```
mdadm: set /home/labex/project/disk1.img faulty in /dev/md0
mdadm: hot removed /home/labex/project/disk1.img from /dev/md0
```

Now, let's check the status of the RAID array again:

```bash
sudo mdadm --detail /dev/md0
```

Example output:

```
/dev/md0:
           Version : 1.2
     Creation Time : Tue Apr 25 15:25:35 2023
        Raid Level : raid5
        Array Size : 407200 (397.66 MiB 417.23 MB)
     Used Dev Size : 100000 (97.66 MiB 102.40 MB)
      Raid Devices : 5
     Total Devices : 4
       Persistence : Superblock is persistent

       Update Time : Tue Apr 25 15:26:56 2023
             State : clean, degraded
    Active Devices : 4
   Working Devices : 4
    Failed Devices : 1
     Spare Devices : 1

            Layout : left-symmetric
        Chunk Size : 512K

Consistency Policy : resync

              Name : localhost.localdomain:0  (local to host localhost.localdomain)
              UUID : 6d2d9c1c:b4d2f9c4:8d6f0e8f:e0b0d4d5
            Events : 8

    Number   Major   Minor   RaidDevice State
       1       0        1        1      active sync   /home/labex/project/disk2.img
       2       0        2        2      active sync   /home/labex/project/disk3.img
       3       0        3        3      active sync   /home/labex/project/disk4.img
       4       0        4        4      spare   /home/labex/project/disk5.img
       0       0        0        -      removed
```

The output shows that the RAID 5 array is now in a degraded state, with one failed device and one spare device available.

In this step, you have learned how to manage and monitor a software RAID array using the `mdadm` command, including adding a new disk, simulating a disk failure, and observing the RAID array's state.
