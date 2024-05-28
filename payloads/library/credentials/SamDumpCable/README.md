**Title: SamDumpCable**

<p>Author: 0i41E<br>
OS: Windows<br>
Version: 1.0<br>
Requirements: OMG Firmware v.2.5 or higher</p>

**What is SamDumpCable?**
#
<p>SamDumpCable dumps the users sam and system hive and compress them into a zip file.<br>
Afterwards you can use a tool like samdump2 to extract the users hashes.</p>


**Instruction:**
<p>!!!Insert the IP or URL of your recieving server!!!<br>
1. Make sure your web server is running

2. Plug in your cable and wait a few seconds

3. Use a tool like samdump2 or pypykatz on your machine to extract the users hashes.
	> `samdump2 1337OMGsys 1337OMGsam`
	or  `pypykatz registry 1337OMGsys --sam 1337OMGsam`
	
	**!Disclaimer! samdump2 has proven to be unreliable in the recent past.**

![alt text](https://github.com/0i41E/omg-payloads/blob/master/payloads/library/credentials/SamDumpCable/sam.png)
