# Week 04 – Linux Administration and Bash Scripting

## Overview

This week focused on Linux system administration, scheduled tasks, Bash scripting, file permissions, and practical cybersecurity exercises using OverTheWire Bandit.

## Learning Objectives

- Understand Linux scheduled tasks using Cron.
- Analyze Bash scripts and understand their execution.
- Understand file ownership and permissions.
- Practice Linux administration and troubleshooting.
- Complete OverTheWire Bandit levels 19–23.

## Practical Work

### 1. Cron and Scheduled Tasks

- Explored the /etc/cron.d/ directory.
- Inspected Cron job configuration files.
- Understood Cron scheduling syntax.
- Analyzed scripts executed automatically by Cron.
- Learned how scheduled tasks run under specific user accounts.

### 2. Bash Scripting

- Created and executed Bash scripts.
- Used variables and command substitution.
- Practiced command pipelines using |.
- Used chmod to manage execution permissions.
- Used mktemp -d to create temporary directories.
- Redirected command output using >.

### 3. File Permissions and Ownership

- Examined directory permissions using ls -ld.
- Understood read, write, and execute permissions.
- Used stat to identify file ownership.
- Studied the difference between chmod and chown.

## OverTheWire Bandit Progress

Successfully completed levels 19–23.

### Level 19
- Practiced executing programs with different user privileges.
- Used the provided executable to access the next level.

### Level 20
- Practiced network communication using Netcat.
- Learned about listening services and connecting to ports.

### Level 21
- Explored Cron jobs and scheduled task configuration.
- Identified how automated scripts are executed.

### Level 22
- Analyzed a Cron job running under the bandit23 account.
- Used whoami, md5sum, and cut.
- Understood command substitution and pipelines.
- Retrieved the password from a temporary file.

### Level 23
- Analyzed a Bash script executed by Cron as bandit24.
- Studied file ownership checks using stat.
- Created a custom Bash script.
- Used directory permissions to allow the scheduled task to access the required files.
- Retrieved the next level password through the scheduled task.

## Key Skills Acquired

- Understanding Cron and automated task execution.
- Reading and analyzing Bash scripts.
- Working with Linux file permissions and ownership.
- Understanding command substitution and pipelines.
- Using temporary directories safely.
- Understanding the security risks of executing untrusted files.
- Improving practical Linux troubleshooting skills.

## Security Lessons

The Bandit challenges demonstrated how insecure Cron configurations and unsafe file handling can expose sensitive information.

It is important to:
- Restrict access to sensitive files.
- Validate files before executing them.
- Apply the principle of least privilege.
- Avoid executing untrusted scripts with elevated privileges.

## Conclusion

Week 04 improved my understanding of Linux administration, Bash scripting, scheduled tasks, and file permissions.

I successfully completed OverTheWire Bandit levels 19–23 and gained practical experience analyzing security weaknesses in automated tasks.

*Status: Week 04 Completed.*
