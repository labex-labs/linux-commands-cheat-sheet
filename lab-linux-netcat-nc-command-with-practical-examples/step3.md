# Transferring Files Using Netcat

In this step, you will learn how to use Netcat to transfer files between a server and a client.

First, let's create a sample file to transfer:

```bash
echo "This is a test file." > test_file.txt
```

Now, let's start the Netcat server to receive the file:

```bash
nc -l -p 8000 > received_file.txt
```

This command starts a Netcat server that listens on port 8000 and redirects any incoming data to a file named `received_file.txt`.

In another terminal, let's connect to the server as a client and send the `test_file.txt` file:

```bash
cat test_file.txt | nc 127.0.0.1 8000
```

This command reads the contents of `test_file.txt` and sends it to the Netcat server running on the local machine (127.0.0.1) on port 8000.

Once the file transfer is complete, you can check the `received_file.txt` file in the server's directory to verify that the file was transferred successfully:

```bash
cat received_file.txt
```

You should see the contents of the `test_file.txt` file.
