# Week 06 - Security Summary Project

## 1. Project Overview

This project is part of Week 06 of my cybersecurity learning roadmap.

It is a Bash script that automatically generates a security summary report containing:

- The number of failed login attempts detected in /var/log/auth.log.
- Disk usage information using the df command.
- The date and time when the report was generated.

The project uses a *systemd service* and a *systemd timer* to automate report generation.

## 2. Project Structure

```text
Week-06-Security-Summary-Project/
├── README.md
├── security-summary.sh
├── security-summary.service
└── security-summary.timer

## 3. Requirements

* Debian 13
* Bash
* systemd
* rsyslog
* Root privileges for reading authentication logs

## 4. Main Script

*File:* `security-summary.sh`

The script performs the following tasks:

1. Reads authentication logs from /var/log/auth.log.
2. Searches for common failed login patterns:
   * `failed password`[
   * `authentication failure`
   * `invalid user`
3. Counts matching log entries.
4. Checks root filesystem disk usage using df -h /.
5. Saves the results to /var/log/security-summary.txt.

## 5. Systemd Service

*File:* `security-summary.service`

The service uses the oneshot type to execute the Bash script and terminate after successful execution.

It runs with root privileges to access the authentication log.

## 6. Systemd Timer

*File:* `security-summary.timer`

The timer is configured as follows:

* *First execution:* 2 minutes after system boot.
* *Repeated execution:* Every 1 hour.
* *Target service:* security-summary.service.

## 7. Installation

Copy the script:

```bash
sudo cp security-summary.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/security-summary.sh
```
Copy the systemd files:

```bash
sudo cp security-summary.service /etc/systemd/system/
sudo cp security-summary.timer /etc/systemd/system/
```

Reload systemd:

```bash
sudo systemctl daemon-reload
```

Enable and start the timer:

```bash
sudo systemctl enable --now security-summary.timer
```

## 8. Testing

Check timer status:

```bash
systemctl status security-summary.timer --no-pager
```

Run the service manually:

```bash
sudo systemctl start security-summary.service
```

Check service status:

```bash
systemctl status security-summary.service --no-pager
```

Review service logs:

```bash
sudo journalctl -u security-summary.service -n 10 --no-pager
```

Read the generated report:

```bash
cat /var/log/security-summary.txt
```

## 9. Test Results

The project was tested successfully on Debian 13 XFCE.

**Results:**

* Bash script executed successfully.
* Failed login patterns were detected and counted.
* Disk usage information was generated successfully.
* systemd service completed with status=0/SUCCESS.
* systemd timer entered the active (waiting) state.
* Automatic execution was configured for every hour.

**Example report:**

```text
====================================
          SECURITY SUMMARY
====================================
Generated: 20 November 2026

Failed Login Attempts:
Total: 2

Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       142G   11G  124G   9% /
```

    **Note:** The failed login count represents matching log entries, not necessarily confirmed intrusion attempts.

Abderrahmane
## 10. Learning Outcomes

Through this project, I practiced:

* Understanding Linux authentication logs.
* Using grep to search and count log patterns.
* Checking filesystem usage with df.
* Writing and executing Bash scripts.
* Creating systemd oneshot services.
* Creating and enabling systemd timers.
* Automating recurring system administration tasks.
* Reading and interpreting systemd journal logs.

## 11. Environment

* *Operating System:* Debian 13 XFCE
* *Shell:* Bash
* *Logging:* rsyslog and systemd-journald
* *Automation:* systemd service and timer

---

*Project Status:* Completed

*Roadmap:* Week 06 - System Logs and Phase 1 Evaluation
