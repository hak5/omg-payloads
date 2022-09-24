# Exfil-to-Plug

Local exfiltration for O.MG Plug Basic

The Basic version of the Plug cannot do stuff like sharing a local storage
device (at least at the time of writing), so this code does local exfil by
connecting the target to the O.MG Plug's own WiFi and using WebSockets to save
data to a setting. This assumes a WiFi-enabled target of course.

## Demo

https://user-images.githubusercontent.com/116893/192064207-ab2ee10e-a0d7-4e64-9f43-6e9dbe442f21.mp4

[YouTube link if the embed doesn't work](https://www.youtube.com/watch?v=mlq4JWFkLZI)

## Requirements

This is built specifically for the O.MG Plug "Basic" edition (I don't know if
there will be other Plug versions, but the firmware says the one I have is the
Basic version) running the v2.5-220322 firmware. I suspect it will work with
Basic edition of the O.MG Cable too, but I haven't tested that.

The Plus/Elite versions of the O.MG Plug might also allow some more sly
version of this behaviour, but this is how to do it on this version of the
O.MG Plug.

## Configuration

This currently uses the default configuration for the O.MG Plug's wifi, you'll
need to change that (in the XML generation) if you've secured yours more.

## Retrieving data

Send the custom command `CTList` to the O.MG Plug via the Debug menu.

## Exfil options

This is just a proof-of-concept, and only exfiltrates the words "Secret
password", but there are 1000s of things you could exfiltrate via PowerShell
or other means, that's up to you! :)

I don't know how much you can fit in settings but I'd err towards less over
more.

## Credits

https://gist.github.com/byt3bl33d3r/910b3161d54c2d6a3d5e1050c4e1013e

https://github.com/O-MG/O.MG-Firmware/wiki/WebSocket-API
