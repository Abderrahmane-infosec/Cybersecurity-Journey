#Week 02 – Linux Permissions and User Management

##Overview

This week focused on Linux permissions, ownership, user and group management, and privilege control through practical exercises.

##Practical Work

1. File Permissions and Ownership

- Used ls -l to inspect file permissions and ownership.

- Used chown to change file ownership and restore it.

- Verified the changes using ls -l.

2. umask

- Tested umask 0002 with files and directories.

- Verified the resulting permissions: 

Files: 664 (rw-rw-r--)

Directories: 775 (rwxrwxr-x)

- Calculated the expected permissions for umask 0027: 

Files: 640

Directories: 750

3. User and Group Management

Practiced the following commands:

- adduser – Create a user.

- usermod – Modify user group membership.

- gpasswd – Add or remove users from groups.

- groupadd – Create a group.

- groupdel – Delete a group.

- deluser – Delete a user.

Verified user and group information using id, getent, and /etc/passwd.

4. Sudo and SetUID

- Inspected administrative privileges using sudo -l.

- Validated sudoers configuration using sudo visudo -c.

- Inspected the SetUID permission on /usr/bin/passwd.

- Identified SetUID executables using find.

##OverTheWire Bandit

- Completed Levels 8–13.

- Practiced text processing, encoding, file identification, archive extraction, and SSH key authentication.

- Successfully accessed Level 14 using the private SSH key.

##Conclusion

Completed practical exercises in Linux permissions, ownership, user and group administration, sudo, and SetUID.

###Environment: Debian 13 XFCE
###Training Platform: OverTheWire Bandit
