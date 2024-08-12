**Title: RemoteDeskCable**

<p>Author: 0i41E<br>
OS: Windows<br>
Version: 3.0<br>
Requirements: OMG Firmware v.3.0 or higher</p>

What is RemoteDeskCable?
#
*The O.MG devices are powerfull tools and can be used as a remote HID, to even increase the power, RemoteDeskCable was released. - Get screen access!*
*See what your victim is doing, see when the time is right to fire up your next payload!*
#

**Instruction:**
- Define the IP address and port of your receiving machine under #ADDRESS and #PORT.
- Start netcat on your attacking machine like so: `nc -lvnp 1234 | nc -lvnp 5678` (Example Ports) This will create a relay towards your second port.
- Plug in your Cable/Plug/Adapter - run away
- Use a browser supporting MJPEG, like FireFox, and visit 127.0.0.1:#PORT.
- Fire up the payload for the screenshare to appear within FireFox.
![alt text](https://github.com/0i41E/omg-payloads/blob/master/payloads/library/remote_access/RemoteDeskCable/Screenshot%20from%202022-01-16%2013-28-28.png)
![alt text](https://github.com/0i41E/omg-payloads/blob/master/payloads/library/remote_access/RemoteDeskCable/Screenshot%20from%202022-01-16%2013-29-03.png)
