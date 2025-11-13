 
# Disable Windows Event Logging

A script used to disable all Windows event logging on Windows 11.

**Category**: Execution

## Description

Event logging can be used as a tool in forensics to determine what an attack entailed.
In order to cover your traces, Windows Event Logging can be disabled. 
These scripts demonstrate two approaches;
- CLI based
- UI based

While the CLI based approach is more concise, requires less interaction (and therefore has fewer pitfalls) and faster, some might prefer 
the UI based approach for demonstration purposes as it allows watching the attack play out.

The CLI based approach starts an Powershell Window with administrator rights and executes two commands.
The UI based approach clicks itself through the setting panes until it reaches the right place.


The CLI script assumes that the currently logged in user has admin rights, if this is not the case, the admin password has to be substituted into the payload at the indicated line.
If the UI script is used, the delay speeds may be adjusted to the (expected) speed of the attacked host. 

## Getting Started

### Dependencies

* Windows 11 with Powershell
* Windows Admin Permissions

### Settings

* Set the password for non default use (current user does not have admin rights)
* Set delay times to your requirement

