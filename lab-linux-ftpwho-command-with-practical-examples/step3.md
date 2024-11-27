# Analyze ftpwho Command Output

In this final step, you will learn how to analyze the output of the `ftpwho` command to understand the active FTP server connections and user activities.

Let's start by running the `ftpwho` command again:

```
sudo ftpwho
```

The output should look similar to this:

```
User          Remote Host        Login Time      Idle Time      Directory
-----------   ----------------   -------------   ------------   ---------
labex         192.168.1.100      14:32:45        00:01:23       /home/labex
admin         10.0.0.50          15:10:12        00:00:45       /var/www/html
```

Here's what each column in the output represents:

1. **User**: The username of the FTP client connected to the server.
2. **Remote Host**: The IP address or hostname of the remote client machine.
3. **Login Time**: The time when the user logged in to the FTP server.
4. **Idle Time**: The amount of time the user has been idle (not actively using the FTP connection).
5. **Directory**: The current working directory of the FTP client.

By analyzing this information, you can gain insights into the FTP server usage and potential security or performance issues. For example:

- **Identifying active users**: The "User" column shows the usernames of the active FTP clients. This can help you keep track of who is connected to the FTP server.
- **Monitoring idle connections**: The "Idle Time" column indicates how long a user has been inactive. This can help you identify and potentially disconnect idle connections to free up server resources.
- **Detecting suspicious activity**: If you see connections from unexpected remote hosts or users in directories they shouldn't be accessing, it could indicate a security issue that requires further investigation.

You can also use the various options of the `ftpwho` command, as explored in the previous step, to filter and analyze the output more effectively based on your specific needs.
