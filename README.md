# raspberrypi
Random scripts used on a raspberry pi

wimip.sh = What is my IP
Script added to Crontab that when ran, queries your public IP and compares it with the last time it ran. If different, it emails you with the new IP. This is useful when you are hosting a service such as a VPN or SSH and want to know of any change immediatly.
