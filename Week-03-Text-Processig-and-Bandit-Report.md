# Week 03 – Text Processing and Bandit Learning Report

## Overview
Studied Linux text-processing tools, regular expressions, pipes, redirection, and system log analysis.

## Text Processing
Practiced the following commands:
- grep: Search for patterns in text.
- cut: Extract specific fields.
- awk: Process structured text and filter fields.
- sed: Replace or delete text.
- tr: Translate or delete characters.
- sort: Sort lines.
- uniq: Identify repeated or unique adjacent lines.
- wc: Count lines and other text elements.

## Pipes and Redirection
- Used pipes (|) to pass command output to other commands.
- Used input redirection (<) and tee to save and display output.
- Combined multiple commands to process text.

## Regular Expressions
Practiced:
- Character classes and ranges.
- Anchors (^ and $).
- Quantifiers (*, +, ?, {}).
- Alternation (|).
- Character groups ([] and [^]).
- Extended regular expressions with grep -E.

## System Log Analysis
Used journalctl to inspect system errors and analyzed log messages.

Created an error summary using:

journalctl -q -p err -o cat --no-pager | sort | uniq -c | sort -nr | tee error-summary.txt

Saved the resulting summary as Week-03-Error-Summary.txt in the GitHub repository.

## OverTheWire Bandit
Completed levels 14–18.

- Level 14: Used Netcat to submit a password to a local service.
- Level 15: Used OpenSSL to communicate through SSL/TLS.
- Level 16: Scanned ports with Nmap, identified services, and retrieved an SSH private key.
- Level 17: Compared two files using diff.
- Level 18: Bypassed the automatic shell logout using SSH with a custom Bash command.

## Environment
- Debian GNU/Linux 13 (Trixie)
- XFCE Desktop Environment

## Outcome
- Practiced Linux text-processing tools and regular expressions.
- Analyzed system error logs and generated a frequency summary.
- Completed OverTheWire Bandit levels 14–18.
