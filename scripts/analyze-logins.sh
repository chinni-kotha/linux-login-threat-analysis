#!/bin/bash

# Analyze the synthetic SSH log included in this project.
cd "$(dirname "$0")/.." || exit 1
LOG="logs/auth-sample.log"

if [[ ! -f "$LOG" ]]; then
    echo "Error: log file not found: $LOG"
    exit 1
fi

echo "LINUX LOGIN ANALYSIS REPORT"
echo "Data source: synthetic practice log"
echo

echo "Total failed logins:"
grep -c "Failed password" "$LOG"

echo
echo "Failed login attempts by source IP:"
awk '/Failed password/ {
    for (i=1; i<NF; i++) {
        if ($i == "from") print $(i+1)
    }
}' "$LOG" | sort | uniq -c | sort -nr

echo
echo "Successful logins:"
grep "Accepted password" "$LOG"

echo
echo "Events involving 192.0.2.50:"
grep -F "from 192.0.2.50 " "$LOG"
