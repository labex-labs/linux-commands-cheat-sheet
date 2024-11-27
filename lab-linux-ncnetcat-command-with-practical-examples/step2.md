# Using nc for TCP Server and Client Communication

In this step, you will learn how to use the nc (netcat) command to set up a simple TCP server and client communication.

First, let's start a TCP server using nc. We will have the server listen on port 8000 and wait for incoming connections:

```bash
nc -l -p 8000
```

The `-l` option tells nc to listen for incoming connections, and the `-p` option specifies the port number.

In a separate terminal, let's connect to the server as a client:

```bash
nc 127.0.0.1 8000
```

Now you can type a message in the client terminal and press Enter. The message will be displayed in the server terminal. You can continue sending messages back and forth between the client and server.

To exit the server, press Ctrl+C. To exit the client, simply close the connection by pressing Ctrl+C.

Example output:

Server terminal:

```
Hello from the server!
```

Client terminal:

```
Hello from the client!
```
