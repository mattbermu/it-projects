PS C:\WINDOWS\system32> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
>>

Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose
you to the security risks described in the about_Execution_Policies help topic at
https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): y
PS C:\WINDOWS\system32> # Windows Health Check Toolkit - Beginner Version
>> # This script checks basic system info and saves a report.
>>
>> # 1) Create a timestamp for the report name
>> $Timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
>>
>> # 2) Choose where to save the report (this path assumes your folder is on Desktop)
>> $ReportPath = "$env:USERPROFILE\Desktop\Windows-HealthCheck-Toolkit\logs\HealthReport_$Timestamp.txt"
>>
>> # 3) A helper function to write both to screen and to the report
>> function Write-ReportLine {
>>     param([string]$Text)
>>     $Text | Tee-Object -FilePath $ReportPath -Append
>> }
>>
>> # 4) Start the report
>> Write-ReportLine "==============================="
>> Write-ReportLine " Windows PC Health Check Report "
>> Write-ReportLine " Generated: $(Get-Date)"
>> Write-ReportLine "==============================="
>> Write-ReportLine ""
>>
>> # 5) Basic System Info
>> Write-ReportLine "---- Basic System Info ----"
>> Write-ReportLine "Computer Name: $env:COMPUTERNAME"
>> Write-ReportLine "User Name: $env:USERNAME"
>>
>> $os = Get-CimInstance Win32_OperatingSystem
>> Write-ReportLine "Windows Version: $($os.Caption)"
>> Write-ReportLine "Build Number: $($os.BuildNumber)"
>> Write-ReportLine ""
>>
>> # 6) Disk Space Check (C: Drive)
>> Write-ReportLine "---- Disk Space (C:) ----"
>> $drive = Get-CimInstance Win32_LogicalDisk -Filter "DeviceID='C:'"
>> $freeGB = [math]::Round($drive.FreeSpace / 1GB, 2)
>> $sizeGB = [math]::Round($drive.Size / 1GB, 2)
>> Write-ReportLine "Free Space: $freeGB GB"
>> Write-ReportLine "Total Size: $sizeGB GB"
>>
>> if ($freeGB -lt 10) {
>>     Write-ReportLine "Status: WARNING - Low disk space (under 10GB)"
>> } else {
>>     Write-ReportLine "Status: OK"
>> }
>> Write-ReportLine ""
>>
>> # 7) Internet Connection Check
>> Write-ReportLine "---- Internet Check ----"
>> $ping = Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet
>>
>> if ($ping) {
>>     Write-ReportLine "Status: OK - Internet reachable (Ping to 8.8.8.8 succeeded)"
>> } else {
>>     Write-ReportLine "Status: FAIL - Cannot reach the internet (Ping failed)"
>> }
>> Write-ReportLine ""
>>
>> # 8) Windows Defender Status (simple check)
>> Write-ReportLine "---- Windows Defender ----"
>> try {
>>     $defender = Get-MpComputerStatus
>>     Write-ReportLine "Real-time Protection: $($defender.RealTimeProtectionEnabled)"
>>     Write-ReportLine "Antivirus Enabled: $($defender.AntivirusEnabled)"
>>     Write-ReportLine "Status: OK (Defender info retrieved)"
>> } catch {
>>     Write-ReportLine "Status: UNKNOWN - Could not read Defender status (maybe not available on this PC)"
>> }
>> Write-ReportLine ""
>>
>> # 9) Finish
>> Write-ReportLine "Report saved to: $ReportPath"
>> Write-ReportLine "Done."
>>
===============================
 Windows PC Health Check Report
 Generated: 01/12/2026 19:16:16
===============================

---- Basic System Info ----
Computer Name: DESKTOP-HI2IFOR
User Name: Matthew
Windows Version: Microsoft Windows 11 Education
Build Number: 26200

---- Disk Space (C:) ----
Free Space: 211.94 GB
Total Size: 464.13 GB
Status: OK

---- Internet Check ----
Status: OK - Internet reachable (Ping to 8.8.8.8 succeeded)

---- Windows Defender ----
Real-time Protection: True
Antivirus Enabled: True
Status: OK (Defender info retrieved)

Report saved to: C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\logs\HealthReport_2026-01-12_19-16-16.txt
Done.
PS C:\WINDOWS\system32> cd "$env:USERPROFILE\Desktop\Windows-HealthCheck-Toolkit\scripts"
>>
PS C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\scripts> .\healthcheck.ps1
>>
.\healthcheck.ps1 : The term '.\healthcheck.ps1' is not recognized as the name of a cmdlet, function, script file, or
operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try
again.
At line:1 char:1
+ .\healthcheck.ps1
+ ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (.\healthcheck.ps1:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\scripts> dir


    Directory: C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\scripts


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         1/12/2026   7:17 PM           2615 healthcheck.ps1.txt


PS C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\scripts> ren "healthcheck.ps1.txt" "healthcheck.ps1"
>>
PS C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\scripts> .\healthcheck.ps1
>>
===============================
 Windows PC Health Check Report
 Generated: 01/12/2026 19:19:00
===============================

---- Basic System Info ----
Computer Name: DESKTOP-HI2IFOR
User Name: Matthew
Windows Version: Microsoft Windows 11 Education
Build Number: 26200

---- Disk Space (C:) ----
Free Space: 211.93 GB
Total Size: 464.13 GB
Status: OK

---- Internet Check ----
Status: OK - Internet reachable (Ping to 8.8.8.8 succeeded)

---- Windows Defender ----
Real-time Protection: True
Antivirus Enabled: True
Status: OK (Defender info retrieved)

Report saved to: C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\logs\HealthReport_2026-01-12_19-19-00.txt
Done.
PS C:\Users\Matthew\Desktop\Windows-HealthCheck-Toolkit\scripts>
