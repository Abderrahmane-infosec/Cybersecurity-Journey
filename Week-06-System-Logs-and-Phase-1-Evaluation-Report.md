# Week 06 – System Logs and Phase 1 Evaluation Report

## 1. Week Overview

This week focused on Linux system logging, log analysis, log rotation, and completing the OverTheWire Bandit challenges.

## 2. System Logging with journald

Studied and practiced system log management using systemd-journald.

Practiced:

- Checking the status of systemd-journald using systemctl.
- Reading recent system logs using journalctl.
- Filtering error messages by priority.
- Inspecting kernel logs using journalctl -k.
- Searching logs for specific events and error messages.

Analyzed system messages related to system services, kernel events, USB connections, and scheduled tasks.

## 3. rsyslog and Authentication Logs

Installed and verified rsyslog on Debian 13.

Verified that:

- The rsyslog service was active and running.
- Traditional log files were available under /var/log.
- Inspected /var/log/syslog and /var/log/auth.log.
- Used grep to search authentication logs for failed login attempts.

No matching failed authentication messages were found in the inspected log.

## 4. Log Rotation with logrotate

Studied the logrotate configuration and its scheduled execution.

Practiced:

- Inspecting /etc/logrotate.conf.
- Exploring configuration files under /etc/logrotate.d/.
- Understanding rotation frequency and retention settings.
- Understanding options such as weekly, monthly, rotate, compress, missingok, and notifempty.
- Checking logrotate.timer and logrotate.service.
- Running logrotate in debug mode to inspect its decisions without performing actual rotation.

Verified that the logrotate timer was enabled and waiting for its scheduled execution.

## 5. OverTheWire Bandit

Successfully completed the remaining Bandit challenges:

- Level 30: Discovered and retrieved information stored in a Git tag.
- Level 31: Practiced Git operations and pushed a required file while handling an ignored file.
- Level 32: Escaped the uppercase shell environment and accessed the next user account.
- Level 33: Successfully accessed the final challenge account and retrieved the final level password.

All Bandit challenges from Level 0 through Level 33 have now been completed.

## 6. Practical Skills Gained

- Inspecting and filtering Linux system logs.
- Understanding the relationship between journald and rsyslog.
- Analyzing authentication and kernel messages.
- Understanding log rotation and retention policies.
- Inspecting systemd timers and oneshot services.
- Completing Git-based security challenges.

## 7. Remaining Phase 1 Project

The following required project remains to be implemented and tested:

- Create a Bash script that summarizes failed login attempts and disk usage.
- Configure a dedicated systemd timer to execute the script automatically.
- Test the script, service, and timer.

## 8. Environment

- Operating System: Debian GNU/Linux 13 (Trixie)
- Desktop Environment: XFCE
- Repository: Cybersecurity-Journey
- Training Platform: OverTheWire Bandit

## 9. Week 06 Status

System log analysis, rsyslog, logrotate, and Bandit Levels 30–33 have been completed.

The Bash reporting script and its dedicated systemd timer are still pending.

Status: Week 06 In Progress.
