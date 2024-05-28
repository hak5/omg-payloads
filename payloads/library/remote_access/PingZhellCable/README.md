**Title: PingZhellCable**

<p>Author: 0i41E<br>
OS: Windows<br>
Version: 1.1<br>
Requirements: OMG Firmware v.2.5 or higher</p>

**What is PingZhellCable?**
#
*Imagine a scenario in which communication to and from the server is protected and filtered by a firewall and does not allow TCP shell communication to take place on any listening port (both reverse and bind TCP connection).*
*But many environments allow ping requests to be sent and received. Ping requests work on the ICMP protocol.*
*ICMP stands for Internet Control Message Protocol; it is used by network devices’ query and error messages. ICMP differs from the widely used TCP and UDP protocols because ICMP is not used for transferring data between network devices.*
*When a device wants to test connectivity to another device, it uses the PING tool (ICMP communication) to send an ECHO REQUEST and waits for an ECHO RESPONSE.*
*The client ICMP agent listens for ICMP packets from a specific host and uses the data in the packet for command execution.*
*The server ICMP agent (PingZhellClient.pl) sends ICMP packets to connect to the victim running a custom ICMP agent (PingZhellCable input) and sends it commands to execute.*
#
There you go, a reverse shell without the usage of ports.

**Instruction:**

Upload PingZhellClient.pl onto your attacking machine.
Install dependencies, if needed:
- IO::Socket
- NetPacket::IP
- NetPacket::ICMP

Disable ICMP replies by the OS:
    `sysctl -w net.ipv4.icmp_echo_ignore_all=1`

Start the client -> `perl PingZhellClient.pl`
![alt text](https://github.com/0i41E/omg-payloads/blob/master/payloads/library/remote_access/PingZhellCable/setup.png)

<p>!!!Insert the IP of your attacking machine into the payload variable $IP!!!<br>

<p>Plug in your OMG device.<br>
Achieve reverse shell.<br>
   run away <3</p>


Credit for code and ideas:
- bdamele
- Nikhil Mittal
- krabelize
