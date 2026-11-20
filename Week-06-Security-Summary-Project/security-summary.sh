#!/usr/bin/env bash

set -euo pipefail

LOG_FILE="/var/log/auth.log"
REPORT="/var/log/security-summary.txt"

{
    echo "================================"
    echo "       SECURITY SUMMARY"
    echo "================================"
    echo "Generated: $(date)"
    echo

    echo "Failed Login Attempts:"
    if [[ -f "$LOG_FILE" ]]; then
        failed_count=$(grep -iEc 'failed password|authentication failure|invalid user' "$LOG_FILE" || true)
        echo "Total: $failed_count"
    else
        echo "Authentication log not found."
    fi

    echo
    echo "Disk Usage:"
    df -h /
} > "$REPORT"

chmod 0644 "$REPORT"
