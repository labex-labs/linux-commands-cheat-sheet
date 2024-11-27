# Configuring the tftp Server

In this step, we will configure a tftp server on our Ubuntu 22.04 Docker container.

First, let's install the tftp server package:

```
$ sudo apt-get update
$ sudo apt-get install -y tftpd-hpa
```

Once the installation is complete, we need to configure the tftp server. The configuration file is located at `/etc/default/tftpd-hpa`.

Open the configuration file using the nano editor:

```
$ sudo nano /etc/default/tftpd-hpa
```

In the configuration file, you can set the following options:

- `TFTP_USERNAME`: The user that the tftp server will run as. We'll use the `labex` user.
- `TFTP_DIRECTORY`: The directory where the tftp server will look for files to serve. We'll use the `/srv/tftp` directory.
- `TFTP_ADDRESS`: The IP address and port the tftp server will listen on. We'll use the default `0.0.0.0:69`.
- `TFTP_OPTIONS`: Additional options for the tftp server. We'll use the default options.

Update the configuration file to match the following:

```
TFTP_USERNAME="labex"
TFTP_DIRECTORY="/srv/tftp"
TFTP_ADDRESS="0.0.0.0:69"
TFTP_OPTIONS="-l -c -s"
```

Save and close the file.

Next, create the `/srv/tftp` directory and set the appropriate permissions:

```
$ sudo mkdir -p /srv/tftp
$ sudo chown -R labex:labex /srv/tftp
```

Finally, start the tftp server:

```
$ sudo systemctl start tftpd-hpa
```

Your tftp server is now configured and running. In the next step, we'll learn how to transfer files using the tftp client.
