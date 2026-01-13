PS C:\WINDOWS\system32> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\scripts"
>> .\event-monitor.ps1
>>
============================================
 Windows Security Event Monitor Report
 Generated: 01/12/2026 19:43:58
 Time Range: Last 24 hours
============================================

Start Time: 01/11/2026 19:43:58
End Time:   01/12/2026 19:43:58

---- Successful Logons (Event ID: 4624) ----
Count: 80

Most Recent Events (up to 5):
Time: 01/12/2026 19:41:27 | Message: An account was successfully logged on.
Time: 01/12/2026 19:39:41 | Message: An account was successfully logged on.
Time: 01/12/2026 19:35:35 | Message: An account was successfully logged on.
Time: 01/12/2026 19:26:27 | Message: An account was successfully logged on.
Time: 01/12/2026 19:25:36 | Message: An account was successfully logged on.

---- Failed Logons (Event ID: 4625) ----
ERROR: Unable to read Security log. Try running PowerShell as Administrator.

---- Account Lockouts (Event ID: 4740) ----
ERROR: Unable to read Security log. Try running PowerShell as Administrator.

---- New User Created (Event ID: 4720) ----
ERROR: Unable to read Security log. Try running PowerShell as Administrator.

---- User Added to a Security Group (Event ID: 4732) ----
ERROR: Unable to read Security log. Try running PowerShell as Administrator.

============================================
 Report saved to: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Security_Event_Report_2026-01-12_19-43-58.txt
 Done.
============================================
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> net session
>>
There are no entries in the list.

PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\scripts"
>> .\event-monitor.ps1
>>
============================================
 Windows Security Event Monitor Report
 Generated: 01/12/2026 19:56:09
 Time Range: Last 24 hours
============================================

Start Time: 01/11/2026 19:56:09
End Time:   01/12/2026 19:56:09

---- Successful Logons (Event ID: 4624) ----
Count: 81

Most Recent Events (up to 5):
Time: 01/12/2026 19:51:21 | Message: An account was successfully logged on.
Time: 01/12/2026 19:51:18 | Message: An account was successfully logged on.
Time: 01/12/2026 19:44:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:41:27 | Message: An account was successfully logged on.
Time: 01/12/2026 19:39:41 | Message: An account was successfully logged on.

---- Failed Logons (Event ID: 4625) ----
Count: 0

No events found for this time range.

---- Account Lockouts (Event ID: 4740) ----
Count: 0

No events found for this time range.

---- New User Created (Event ID: 4720) ----
Count: 0

No events found for this time range.

---- User Added to a Security Group (Event ID: 4732) ----
Count: 0

No events found for this time range.

============================================
 Report saved to: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Security_Event_Report_2026-01-12_19-56-09.txt
 Done.
============================================
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\scripts"
>> .\event-monitor.ps1
>>
============================================
 Windows Security Event Monitor Report
 Generated: 01/12/2026 19:57:32
 Time Range: Last 24 hours
============================================

Start Time: 01/11/2026 19:57:32
End Time:   01/12/2026 19:57:32

---- Successful Logons (Event ID: 4624) ----
Count: 87

Most Recent Events (up to 5):
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:02 | Message: An account was successfully logged on.
Time: 01/12/2026 19:56:59 | Message: An account was successfully logged on.

---- Failed Logons (Event ID: 4625) ----
Count: 1

Most Recent Events (up to 5):
Time: 01/12/2026 19:57:08 | Message: An account failed to log on.

---- Account Lockouts (Event ID: 4740) ----
Count: 0

No events found for this time range.

---- New User Created (Event ID: 4720) ----
Count: 0

No events found for this time range.

---- User Added to a Security Group (Event ID: 4732) ----
Count: 0

No events found for this time range.

============================================
 Report saved to: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Security_Event_Report_2026-01-12_19-57-32.txt
 Done.
============================================
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> Get-WinEvent -FilterHashtable @{LogName="Security"; ID=4625; StartTime=(Get-Date).AddHours(-1)} -MaxEvents 5 | Format-List TimeCreated,Id,Message
>>


TimeCreated : 1/12/2026 7:57:08 PM
Id          : 4625
Message     : An account failed to log on.

              Subject:
                Security ID:            S-1-5-18
                Account Name:           DESKTOP-HI2IFOR$
                Account Domain:         WORKGROUP
                Logon ID:               0x3E7

              Logon Type:                       2

              Account For Which Logon Failed:
                Security ID:            S-1-0-0
                Account Name:           Matthew
                Account Domain:         DESKTOP-HI2IFOR

              Failure Information:
                Failure Reason:         Unknown user name or bad password.
                Status:                 0xC000006D
                Sub Status:             0xC000006A

              Process Information:
                Caller Process ID:      0x808
                Caller Process Name:    C:\Windows\System32\svchost.exe

              Network Information:
                Workstation Name:       DESKTOP-HI2IFOR
                Source Network Address: 127.0.0.1
                Source Port:            0

              Detailed Authentication Information:
                Logon Process:          User32
                Authentication Package: Negotiate
                Transited Services:     -
                Package Name (NTLM only):       -
                Key Length:             0

              This event is generated when a logon request fails. It is generated on the computer where access was
              attempted.

              The Subject fields indicate the account on the local system which requested the logon. This is most
              commonly a service such as the Server service, or a local process such as Winlogon.exe or Services.exe.

              The Logon Type field indicates the kind of logon that was requested. The most common types are 2
              (interactive) and 3 (network).

              The Process Information fields indicate which account and process on the system requested the logon.

              The Network Information fields indicate where a remote logon request originated. Workstation name is not
              always available and may be left blank in some cases.

              The authentication information fields provide detailed information about this specific logon request.
                - Transited services indicate which intermediate services have participated in this logon request.
                - Package name indicates which sub-protocol was used among the NTLM protocols.
                - Key length indicates the length of the generated session key. This will be 0 if no session key was
              requested.



PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\scripts"
>> .\event-monitor.ps1
>>
============================================
 Windows Security Event Monitor Report
 Generated: 01/12/2026 20:00:20
 Time Range: Last 24 hours
============================================

Start Time: 01/11/2026 20:00:20
End Time:   01/12/2026 20:00:20

---- Successful Logons (Event ID: 4624) ----
Count: 85

Most Recent Events (up to 5):
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:02 | Message: An account was successfully logged on.
Time: 01/12/2026 19:56:59 | Message: An account was successfully logged on.

---- Failed Logons (Event ID: 4625) ----
Count: 1

Most Recent Failed Logons (up to 5):
Time | Username | LogonType | SourceIP | FailureReason
---- | -------- | --------- | -------- | ------------
01/12/2026 19:57:08 | DESKTOP-HI2IFOR$ | 2 - Interactive (Local) | 127.0.0.1 | Unknown user name or bad password.

---- Account Lockouts (Event ID: 4740) ----
Count: 0

No events found for this time range.

---- New User Created (Event ID: 4720) ----
Count: 0

No events found for this time range.

---- User Added to a Security Group (Event ID: 4732) ----
Count: 0

No events found for this time range.

============================================
 Report saved to: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Security_Event_Report_2026-01-12_20-00-20.txt
 Done.
============================================
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> explorer "..\logs"
>>
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\scripts"
>> .\event-monitor.ps1
>>
============================================
 Windows Security Event Monitor Report
 Generated: 01/12/2026 20:04:01
 Time Range: Last 24 hours
============================================

Start Time: 01/11/2026 20:04:01
End Time:   01/12/2026 20:04:01

---- Successful Logons (Event ID: 4624) ----
Count: 84

Most Recent Events (up to 5):
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:02 | Message: An account was successfully logged on.
Time: 01/12/2026 19:56:59 | Message: An account was successfully logged on.

---- Failed Logons (Event ID: 4625) ----
Count: 1

Most Recent Failed Logons (up to 5):
Time | Username | LogonType | SourceIP | FailureReason
---- | -------- | --------- | -------- | ------------
01/12/2026 19:57:08 | DESKTOP-HI2IFOR$ | 2 - Interactive (Local) | 127.0.0.1 | Unknown user name or bad password.

---- Account Lockouts (Event ID: 4740) ----
Count: 0

No events found for this time range.

---- New User Created (Event ID: 4720) ----
Count: 0

No events found for this time range.

---- User Added to a Security Group (Event ID: 4732) ----
Count: 0

No events found for this time range.

============================================
 Report saved to: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Security_Event_Report_2026-01-12_20-04-01.txt
 Done.
============================================
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> explorer "..\logs"
>>
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\scripts"
>> .\event-monitor.ps1
>>
============================================
 Windows Security Event Monitor Report
 Generated: 01/12/2026 20:08:58
 Time Range: Last 24 hours
============================================

Start Time: 01/11/2026 20:08:58
End Time:   01/12/2026 20:08:58

---- Successful Logons (Event ID: 4624) ----
Count: 83

Most Recent Events (up to 5):
Time: 01/12/2026 20:04:50 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:13 | Message: An account was successfully logged on.
Time: 01/12/2026 19:57:02 | Message: An account was successfully logged on.

---- Failed Logons (Event ID: 4625) ----
Count: 1

Most Recent Failed Logons (up to 5):
Time | Username | LogonType | SourceIP | FailureReason
---- | -------- | --------- | -------- | ------------
01/12/2026 19:57:08 | Matthew | 2 - Interactive (Local) | 127.0.0.1 | Unknown user name or bad password.

Top 5 Usernames (Failed Logons):
Matthew: 1

Top 5 Source IPs (Failed Logons):
127.0.0.1: 1

CSV Export: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Failed_Logons_4625_2026-01-12_20-08-58.csv

---- Account Lockouts (Event ID: 4740) ----
Count: 0

No events found for this time range.

---- New User Created (Event ID: 4720) ----
Count: 0

No events found for this time range.

---- User Added to a Security Group (Event ID: 4732) ----
Count: 0

No events found for this time range.

============================================
 Report saved to: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts\..\logs\Security_Event_Report_2026-01-12_20-08-58.txt
 Done.
============================================
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> explorer "..\logs"
>>
PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\scripts> cd "$env:USERPROFILE\Desktop\project-05-windows-event-monitor\logs"
>> dir
>>


    Directory: C:\Users\Matthew\Desktop\project-05-windows-event-monitor\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         1/12/2026   8:08 PM            190 Failed_Logons_4625_2026-01-12_20-08-58.csv
-a----         1/12/2026   7:40 PM           2982 Security_Event_Report_2026-01-12_19-40-54.txt
-a----         1/12/2026   7:43 PM           2982 Security_Event_Report_2026-01-12_19-43-58.txt
-a----         1/12/2026   7:56 PM           2758 Security_Event_Report_2026-01-12_19-56-09.txt
-a----         1/12/2026   7:57 PM           2878 Security_Event_Report_2026-01-12_19-57-32.txt
-a----         1/12/2026   8:03 PM          17124 Security_Event_Report_2026-01-12_20-00-20.txt
-a----         1/12/2026   8:04 PM           3210 Security_Event_Report_2026-01-12_20-04-01.txt
-a----         1/12/2026   8:08 PM           3654 Security_Event_Report_2026-01-12_20-08-58.txt


PS C:\Users\Matthew\Desktop\project-05-windows-event-monitor\logs> ren "Security_Event_Report_2026-01-12_20-08-58.txt" "sample-report.txt"
>> ren "Failed_Logons_4625_2026-01-12_20-08-58.csv" "sample-failed-logons.csv"
>>
