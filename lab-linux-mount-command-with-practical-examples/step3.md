# Mount a Remote File System Using NFS

In this step, we will learn how to mount a remote file system using the Network File System (NFS) protocol.

First, let's create a new directory to use as the mount point for the remote NFS share:

```
sudo mkdir /mnt/nfs
```

Now, let's mount the remote NFS share to the `/mnt/nfs` directory. For this example, we'll use the NFS server address `192.168.1.100:/shared` and mount it as an `nfs` file system:

```
sudo mount -t nfs 192.168.1.100:/shared /mnt/nfs
```

Example output:

```
No output, as the mount operation was successful.
```

To verify that the NFS file system is mounted correctly, you can use the `mount` command:

```
mount | grep /mnt/nfs
```

Example output:

```
192.168.1.100:/shared on /mnt/nfs type nfs (rw,relatime,vers=4.2,rsize=262144,wsize=262144,namlen=255,hard,proto=tcp,timeo=600,retrans=2,sec=sys,mountaddr=192.168.1.100,mountvers=4,mountport=20048,mountproto=udp,local_lock=none,addr=192.168.1.100)
```

This output shows that the remote NFS share `192.168.1.100:/shared` is mounted on the `/mnt/nfs` directory.
