# Week 05 – Advanced Bash and Systemd Learning Report

## 1. Week Overview

This week focused on advanced Bash scripting, script reliability, ShellCheck, and systemd service management.

## 2. Advanced Bash Scripting

Topics studied and practiced:

- Exit codes and the $? variable.
- Conditional execution using && and ||.
- for and while loops.
- break and continue.
- Bash functions and positional parameters ($1, $2, $#).
- Function return codes.
- Safer scripts using:
  - set -e
  - set -u
  - set -o pipefail
  - set -euo pipefail

## 3. ShellCheck

Installed and tested ShellCheck version 0.10.0.

Practiced identifying and fixing:

- SC2154: Referencing an unset or potentially unassigned variable.
- SC2086: Unquoted variable expansion.

Rechecked the script after fixing the warnings.

## 4. Systemd Service Management

Practiced using:

- systemctl status
- systemctl start
- systemctl restart
- systemctl enable
- systemctl is-active
- systemctl is-enabled
- systemctl cat
- journalctl

Created a custom systemd service named systemd-demo.service.

The service executes a Bash script located at:

/home/abdou/Linux-Lab/systemd-demo.sh

The script uses set -euo pipefail and appends a success message to a log file.

Verified that:

- The service executes successfully.
- The service is enabled at boot.
- Execution logs can be inspected using journalctl.
- The inactive (dead) state is expected after a successful Type=oneshot service finishes.

## 5. OverTheWire Bandit

Completed the following challenges:

- Bandit 24: PIN brute-force scripting using Bash.
- Bandit 25: SSH key usage and shell escape through the more`/vi` environment.
- Bandit 26: SUID binary execution and privilege boundaries.
- Bandit 27: Git repository cloning over SSH.
- Bandit 28: Recovering exposed information from Git history.
- Bandit 29: Discovering information in a remote Git branch.

## 6. Practical Skills Gained

- Writing safer Bash scripts.
- Using loops and functions to automate tasks.
- Detecting script problems with ShellCheck.
- Creating and managing a custom systemd service.
- Reading service logs and checking execution status.
- Understanding SUID and basic Git repository investigation.

## 7. Week 05 Outcome

Successfully created and tested a custom systemd oneshot service that executes a Bash script and records its output in a log file.

*Environment:* Debian 13 XFCE

*Repository:* Cybersecurity-Journey

*Learning stage:* Phase 1 – Week 05
