Quick install guide:
DO NOT connect your raspberry pi to a monitor when installing, the Sonic Pi is meant to be controlled by a phone
Insert a microSD card with the Sonic Pi image on it into the Raspberry Pi and turn the device on
The Sonic Pi will run it's autoomatic startup processes. This can take a few minutes You'll know it's done when you see
an access point named "The Sonic" on the wifi list of your phone. Connect to it and enjoy!

default wifi password:
password
default ssh credentials:
username: root
password: toor
default web app credentials:
username: sonic
password: password
default vnc password:
password

It is HIGHLY recommended that you change these settings!

The Sonic Web App is located at 192.168.8.1

TROUBLESHOOTING:
If the access point "The Sonic" isn't showing up, turn off the device, plug it into a monitor and see if the pi boots normally
If the pi doesn't boot correctly, try re-imaging the SD card.
If the pi DOES boot correctly, open a terminal and type "ifconfig" to verify that there is an interface called "wap0"
If there is NOT an interface called wap0, try running /var/www/html/scripts/ifaceChecker.py. If that doesn't work, there may be
an issue with your Raspberry Pi's internal network card

If you connect to a wifi point, but can't access the internet, login to the VNC on port 5901 with the password "password". 
Type "firefox" into the terminal and try browsing to a web page. If you're redirected to a portal, accept the terms and conditions.
If you still can't access the internet from your control device (phone,laptop,etc), try forgetting the connection and re-connecting
to "The Sonic" AP. Sometimes wifi points require a certain DNS server to be used. Re-connecting to the AP allows the Sonic Pi
to check for other DNS servers to use.
