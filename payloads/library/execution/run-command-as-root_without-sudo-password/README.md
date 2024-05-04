# Run any command as root, without knowing the sudo password

A payload that allows for executing any bash command on the targets computer as root, without knowing their sudo password.

**Category:** Execution

## Description

This payload intercepts the .bashrc file so when the user uses `sudo` they type their password in our fake prompt letting us execute any command with root.
We also execute the targets original command, and remove our injection in the .bashrc file to remove traces.

## Getting started

### Dependencies
- Linux
- Bash

### Prerequisites

If your target uses Gnome, uncomment this line in the payload (uncomment by removing `REM_BLOCK` and `END_REM`:
```
REM_BLOCK
Use this if your targets DE is Gnome (remove REM_BLOCK and END_REM + this line)
ALT F2
DELAY 100
STRINGLN xterm
DELAY 500
END_REM
```

If your target uses a DE or WM that lets you open a terminal with ctrl-alt-t uncomment this line:
```
REM_BLOCK
Use this if your targets DE or WM has the ctrl-alt-t shortcut (remove REM_BLOCK and END_REM + this line)
CTRL-ALT t
DELAY 500
END_REM
```

## Settings
- #cmd what command to run as root, do not include `sudo`
