# Using nc for UDP Server and Client Communication

In this step, you will learn how to use the nc (netcat) command to set up a simple UDP server and client communication.

First, let's start a UDP server using nc. We will have the server listen on port 8000 and wait for incoming connections:

```bash
nc -u -l -p 8000
```

The `-u` option tells nc to use the UDP protocol, the `-l` option tells nc to listen for incoming connections, and the `-p` option specifies the port number.

In a separate terminal, let's connect to the server as a UDP client:

```bash
nc -u 127.0.0.1 8000
```

The `-u` option tells nc to use the UDP protocol.

Now you can type a message in the client terminal and press Enter. The message will be displayed in the server terminal. You can continue sending messages back and forth between the client and server.

To exit the server, press Ctrl+C. To exit the client, simply close the connection by pressing Ctrl+C.

Example output:

Server terminal:

```
Hello from the UDP server!
```

Client terminal:

```
Hello from the UDP client!
```
