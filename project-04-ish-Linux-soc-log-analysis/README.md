# Project 04: iSH Linux SOC Log Analysis Lab (iPad)

Skills: Linux command line, log analysis, troubleshooting, basic incident response, documentation  
Tools: iSH (Alpine Linux), grep, awk, sort, uniq, wc, ps, kill, ping, nslookup

* * *

## Objective

Simulate a SOC-style investigation by analyzing authentication logs to identify brute-force login attempts, targeted accounts, and the most active source IP.

* * *

## What I Did

### 1) Created and reviewed log files
- Created `security.log` and `auth.log`
- Verified file contents using `cat`

### 2) Identified failed login patterns
- Filtered failed logins:
  - `grep "Failed login" auth.log`
- Counted total failed attempts:
  - `grep "Failed login" auth.log | wc -l`

### 3) Found the main targeted account
- Extracted usernames and counted attempts:
  - `grep "Failed login" auth.log | awk '{print $6}' | sort | uniq -c | sort -nr`

### 4) Found the top attacking IP
- Extracted IPs and counted occurrences:
  - `grep "Failed login" auth.log | awk '{print $9}' | sort | uniq -c | sort -nr`

### 5) Simulated larger logs and re-ran analysis
- Duplicated logs into `big_auth.log` and confirmed increased attempts:
  - `grep "Failed login" big_auth.log | awk '{print $9}' | sort | uniq -c | sort -nr`

* * *

## Results (Example Findings)

- Main targeted account: `root`
- Most active source IP: `192.168.1.45`
- Identified brute-force style repeated failed logins using Linux command pipelines

* * *

## Notes / Lessons Learned

- Learned how to quickly filter and summarize logs using:
  - `grep | awk | sort | uniq -c`
- Practiced troubleshooting when commands failed due to typos and missing tools
- Learned how to separate network vs DNS issues with `ping` and `nslookup`
