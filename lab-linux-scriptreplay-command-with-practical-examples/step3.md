# Replaying Recorded Sessions with scriptreplay Command

In this step, you will learn how to use the `scriptreplay` command to replay the terminal sessions you have recorded using the `script` command.

Assuming you have already recorded a terminal session using the `script` command in the previous step, let's replay the recorded session.

First, make sure you are in the `~/project` directory, where the `recording.log` file is located:

```bash
cd ~/project
```

Now, use the `scriptreplay` command to replay the recorded session:

```bash
scriptreplay recording.log
```

This will replay the recorded terminal session, and you will see the commands being executed as they were recorded.

Example output:

```
Script started on 2023-04-24 12:34:56
echo "This is a test command."
This is a test command.
ls -l
total 4
-rw-r--r-- 1 labex labex 42 Apr 24 12:34 recording.log
Script done on 2023-04-24 12:34:57
```

The `scriptreplay` command can be very useful in various scenarios, such as:

- Troubleshooting: You can replay a recorded session to identify the steps that led to an issue.
- Training: You can replay a recorded session to demonstrate a specific workflow or procedure to others.
- Collaboration: You can share the recorded session with colleagues or team members to help them understand a specific process or workflow.

The `scriptreplay` command can also be used with additional options to control the playback speed, pause the replay, or even skip certain parts of the recorded session.
