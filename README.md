# Linux Login Threat Analysis Lab

## Overview
Analyzed synthetic SSH authentication logs in Kali Linux to investigate
repeated failed logins followed by a successful login from the same IP.

## Tools
Kali Linux, Bash, grep, awk, sort, uniq, and tee.

## How to Run
From the project folder:

bash scripts/analyze-logins.sh

To save the output:

bash scripts/analyze-logins.sh | tee reports/login-analysis.txt

## Results
Identified five failed logins against admin from 192.0.2.50,
followed by a successful login as analyst from that IP.
Documented why this pattern requires investigation without
claiming a confirmed compromise.

## Project Files
- logs/: Synthetic authentication log.
- scripts/: Bash analysis script.
- evidence/: Saved investigation output and screenshots.
- reports/: Analysis output and incident report.

## Limitations
This is a small educational lab using synthetic data.
The script summarizes log activity and displays a hard-coded
investigation IP. It is not a live monitoring or automatic
attack detection tool.
