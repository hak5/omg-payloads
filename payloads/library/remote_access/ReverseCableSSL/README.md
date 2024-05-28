**Title: ReverseCableSSL**

<p>Author: 0i41E<br>
OS: Windows<br>
Version: 2.0<br>
Requirements: OMG Firmware v.3.0 or higher</p>

**What is ReverseCableSSL?**
#
<p>ReverseCableSSL gets you remote access to your target in seconds.<br>
Unlike ReverseCable, ReverseCableSSL offers encrypted traffic via OpenSSL.</p>


**Instruction:**
- Define your host address and port at #ADDRESS and #PORT<br>
- Create key.pem & cert.pem like so: <br>
	```openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes```
	<p>It will ask for information about the certificate - Insert whatever you want.</p>

- For catching the shell you need to start a listener, which supports encrypted traffic.<br>
I recommend openssl itself or ncat - Example syntax for both:<br>
	> `openssl s_server -quiet -key key.pem -cert cert.pem -port [Port Number]` <br>
	> `ncat --listen -p [Port Number] --ssl --ssl-cert cert.pem --ssl-key key.pem`</p>

- Plug in Cable.

![alt text](https://github.com/0i41E/omg-payloads/blob/master/payloads/library/remote_access/ReverseCableSSL/CreateCert.png)
![alt text](https://github.com/0i41E/omg-payloads/blob/master/payloads/library/remote_access/ReverseCableSSL/StartScreen.jpg)
