**Title: RemoteDeskCable**

<p>Author: 0iphor13<br>
OS: Windows<br>
Version: 2.1<br>
Requirements: OMG Firmware v.2.5 or higher</p>

What is RemoteDeskCable?
#
*The O.MG devices are powerfull tools and can be used as a remote HID, to even increase the power, RemoteDeskCable was released. - Get screen access!*
*See what your victim is doing, see when the time is right to fire up your next payload!*
#

**Instruction:**

!!!Insert the IP of your attacking machine & PORT into the payload!!!
#
Start netcat on your attacking machine like so: `nc -lvnp 1234 | nc -lvnp 5678` (Example Ports) This will create a relay towards your second port.
Plug in your Cable/Plug/Adapter - run away
#
Use a browser supporting MJPEG, like FireFox, and visit 127.0.0.1:5678.
Fire up the payload for the screenshare to appear within FireFox.
![alt text](https://github.com/0iphor13/omg-payloads/blob/master/payloads/library/remote_access/RemoteDeskCable/Screenshot%20from%202022-01-16%2013-28-28.png)
![alt text](https://github.com/0iphor13/omg-payloads/blob/master/payloads/library/remote_access/RemoteDeskCable/Screenshot%20from%202022-01-16%2013-29-03.png)
