# Help Desk Ticket Log

---

## Ticket 001 – User Unable to Log In

**Scenario:**  
User (test.user) was unable to log in to Windows 11.

**Steps Taken:**
1. Logged in as IT.Admin (administrator account)
2. Opened Local Users and Groups (lusrmgr.msc)
3. Checked account status and found test.user was disabled
4. Enabled the account
5. Logged in as test.user to verify successful authentication

**Resolution:**
- Re-enabled user account
- Confirmed login was successful
- Issue resolved

**Tools Used:**
- Local Users and Groups (lusrmgr.msc)
- Windows login interface

---

## Ticket 002 – No Internet Connectivity

**Scenario:**  
User (test.user) reported no internet access despite being connected to the network.

**Steps Taken:**
1. Logged in as IT.Admin
2. Opened Network Connections (ncpa.cpl)
3. Found the active network adapter disabled
4. Enabled the network adapter
5. Logged in as test.user
6. Verified internet access via browser
7. Ran ipconfig to confirm IPv4 address and default gateway

**Resolution:**
- Enabled network adapter
- Restored internet connectivity
- Issue resolved

**Tools Used:**
- Network Connections (ncpa.cpl)
- Command Prompt (ipconfig)
- Web browser

---

## Ticket 003 – Shared Network Drive Access Issue

**Scenario:**  
User (test.user) could not access shared folder \\vboxuser\SharedDocs.

**Steps Taken:**
1. Logged in as IT.Admin
2. Verified test.user lacked permissions on the shared folder
3. Added Read/Write permissions
4. Logged in as test.user
5. Mapped the shared folder to drive Z:
6. Verified read/write access

**Resolution:**
- Granted appropriate folder permissions
- Mapped network drive
- Confirmed successful access

**Tools Used:**
- File Explorer
- Folder Sharing & Permissions
- Map Network Drive

---

## Ticket 004 – Microsoft 365 Account Access (Simulated)

**Scenario:**  
User (test.user) could not access Microsoft 365 account (simulated locally).

**Steps Taken:**
1. Logged in as IT.Admin
2. Opened Local Users and Groups (lusrmgr.msc)
3. Found test.user account disabled
4. Re-enabled the account
5. Reset user password
6. Logged in as test.user
7. Opened Outlook to simulate Microsoft 365 access
8. Verified email access and functionality

**Resolution:**
- Re-enabled account and reset password
- Confirmed successful login and Outlook access

**Tools Used:**
- Local Users and Groups (lusrmgr.msc)
- Outlook
