# Manage Incoming talk Requests

In this step, we will learn how to manage incoming `talk` requests.

When another user initiates a `talk` session with you, you will receive a notification on your terminal. The notification will look something like this:

```
Message from Talk_Daemon@labex2 at 14:23 ...
talk: connection requested by labex2
talk: respond with: talk labex2
```

To accept the incoming request, you can simply run the following command:

```
$ talk labex2
```

This will establish the talk session, and you can start communicating with the other user.

If you don't want to accept the incoming request, you can simply ignore it. The other user will see a message indicating that you have not responded to the request.

You can also use the `mesg` command to manage your availability for incoming `talk` requests:

```
$ mesg n
```

This will prevent other users from sending you `talk` requests. To allow incoming requests again, use:

```
$ mesg y
```
