# Netcat Server and Client Communication

In this step, you will learn how to use Netcat to establish a simple server-client communication.

First, let's start a Netcat server on one terminal:

```bash
nc -l -p 8000
```

This command starts a Netcat server that listens on port 8000 for incoming connections.

Now, in another terminal, let's connect to the server as a client:

```bash
nc 127.0.0.1 8000
```

This will connect the client to the server running on the local machine (127.0.0.1) on port 8000.

Once the connection is established, you can type a message in either the server or the client terminal, and it will be displayed on the other side. For example, type a message in the client terminal and press Enter:

```
Hello, server!
```

You should see the message appear in the server terminal:

```
Hello, server!
```

To end the communication, simply type `Ctrl+C` in either the server or the client terminal.
