# Project 05: Windows Security Event Monitor (PowerShell)

## Goal
Build a PowerShell tool that reads Windows Security Event Logs and generates a timestamped report + CSV export for authentication and account activity.

---

## Skills Practiced
- Windows Security logs / Event Viewer
- PowerShell scripting fundamentals
- Basic security monitoring mindset
- Reporting and documentation

---

## What It Detects
- Successful logons (Event ID 4624)
- Failed logons (Event ID 4625) with details: username, logon type, source IP, failure reason
- Account lockouts (Event ID 4740)
- New user creation (Event ID 4720)
- User added to a security group (Event ID 4732)

---

## Output
- Timestamped report saved in: `logs/`
- CSV export for failed logons saved in: `logs/`
- Summary analysis: Top usernames + source IPs for failed logons

---

## How to Run
1. Open PowerShell
2. Navigate to scripts folder:
   ```powershell
   cd ".\project-05-windows-event-monitor\scripts"
3. Run:
   .\event-monitor.ps1
