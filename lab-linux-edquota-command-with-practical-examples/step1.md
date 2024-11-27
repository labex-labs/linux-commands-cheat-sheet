# Understanding Disk Quota Concept

In this step, we will explore the concept of disk quota in Linux. Disk quota is a system that allows system administrators to limit the amount of disk space that a user or group can consume on a file system.

Disk quota is typically used in shared environments, such as web hosting or cloud computing, where multiple users or applications are using the same storage resources. By setting disk quotas, system administrators can ensure that no single user or application can monopolize the available storage, and that all users have a fair share of the resources.

To understand the disk quota concept, let's consider the following scenario:

Imagine you have a file system with a total capacity of 100 GB. You have three users, Alice, Bob, and Charlie, who are all using this file system. Without disk quota, each user could potentially use up the entire 100 GB of storage, leaving the other two users with no space to work with.

With disk quota, you can set a limit on the amount of storage each user can consume. For example, you could set a quota of 30 GB for Alice, 30 GB for Bob, and 40 GB for Charlie. This ensures that each user has a fair share of the available storage, and no single user can monopolize the resources.

Disk quota can be set at the user level, group level, or both. System administrators can also set soft and hard limits for each user or group. A soft limit is a warning threshold, where the user is notified when they are approaching their quota. A hard limit is a strict limit that the user cannot exceed, even if they try to do so.

In the next step, we will learn how to enable disk quota on a Linux file system and manage user disk quotas using the `edquota` command.
