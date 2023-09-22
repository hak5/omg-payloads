**Title: Windows11_CommandPrompt_Downgrade**

<p>Author: 0iphor13<br>
OS: Windows11<br>
Version: 1.0<br>

**What is Windows11_CommandPrompt_Downgrade?**

*It is pretty simple to explain... In Windows 11 22H2, the default app used to host console windows has been changed to Windows Terminal. After the October 2022 update, Command Prompt, Windows PowerShell, and other console apps will appear inside an instance of Windows Terminal[(Reference)](https://support.microsoft.com/en-us/windows/command-prompt-and-windows-powershell-for-windows-11-6453ce98-da91-476f-8651-5c14d5777c20). This causes Powershell not using the parameter `-WindowStyle hidden` properly, resulting in Powershell just minimizing instead of properly hiding itself*

By default this payload reverts the default app to Conhost, fixing the hidden powershell. You may intergrate this to properly hide your payloads actions again.
Other values are also provided for a backup solution or simply to tinker around with it.

**Instruction: Downgrade to Conshost**

This by default is already configured and plug&play.
- Change line 35 to beeing `CommandPrompt_Downgrade(#CONHOST,#CONHOST)`

**Instruction: Using Windows Default**

- Change line 35 to beeing `CommandPrompt_Downgrade(#AUTOMATIC,#AUTOMATIC)`

**Instruction: Using Terminal App**

- Change line 35 to beeing `CommandPrompt_Downgrade(#TERMINAL_DC,#TERMINAL_DT)`

_Note: This changes values in the registry._
