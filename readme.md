# SSN CNC Tutorial

Thank you for your trust in SSN, you will not regret it.

Current SSN version: `2.8.1`

Setup video tutorial: https://t.me/tcpsyn_bot (/ssn_client_menu)

# Suggested minimum server specs and details:

Operating System: `Ubuntu 20.04`
Ram: `1 Gb`
CPU: `1 core` @ `1 Ghz`
Storage: `3 Gb`

*Step #1*
# Do the following:
	Open the "assets/config.json" and replace line 2 with your license key.
	Open the "assets/config.json" and replace line 4 and 13 with your server IP address.
	If your SSN directory is not "/root/CNC":
		Open the "SSN_AUTO.sh" file and replace line 11 with your SSN directory.
## What it should look like: https://ibb.co/vV0JCZT

*Step #2*
# Upload the "CNC" folder that you received in the "SSNCNC.zip" onto your server.

*Step #3*
# Run the following 3 commands (DISABLE IPV6):

sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1

## What it should look like: https://ibb.co/ZSgFwFV

*Step #3.5*
### If you are using 100up, do the following: https://ibb.co/0thKKbg

*Step #4*
# Run the following command:
sudo apt-get update -y && sudo apt-get upgrade -y
## What it should look like: https://ibb.co/dc6HWLr

*Step #5*
# Run the following command:
sudo apt-get install screen jq zip unzip curl phpmyadmin mysql-server mysql-client -y
	# On the first screen, click the enter key with the first option selected "apache2"
	# On the second screen, click the enter key with the first option selected "<Yes>"
	# On the third screen, input a 32 character varchar password ending in "!?" such as	"RBkijsHcqLJpiSTq7hrSsfdpQQq6KE6a?!"
## What it should look like: https://ibb.co/hZRY5xJ -> https://ibb.co/Gp2Ztf2 -> https://ibb.co/Fx6NRfX -> https://ibb.co/YPSv5dd

*Step #6*
# Run the following 6 commands:
sudo mysql
CREATE DATABASE db834674;
CREATE USER 'user723432'@'localhost' IDENTIFIED BY 'RBkijsHcqLJpiSTq7hrSsfdpQQq6KE6a?!';
GRANT ALL PRIVILEGES ON * . * TO 'user723432'@'localhost';
FLUSH PRIVILEGES;
exit
## What it should look like: https://ibb.co/JHShZq6

*Step #7*
# Navigate into the directory that the "assets" folder (By default: cd CNC) and run:
chmod 777 *
## What it should look like: https://ibb.co/3hxRcBW

*Step #8*
# Run the following command:
./SSN
## What it should look like: https://ibb.co/DR0w7Xs

*Step #8.5*
# Do the following:
	Press keys: CTRL + C
## What it should look like: https://ibb.co/NNr3sNB

*Step #9*
# Run the following command:
screen -dmS AUTO ./SSN_AUTO.sh
## What it should look like: https://ibb.co/9yLSSNF

*Step #10*
# Run the following command:
screen -r SSN
## What it should look like: https://ibb.co/DV3wD5d

*Step #10.5*
### Only if you see "There is no screen to be resumed matching SSN." when doing Step #10, run the following command:
./SSN
### This will show you the issue. To fix the issue, visit: https://t.me/tcpsyn_bot

*Step #11*
# Do the following:
	Press keys: CTRL + A + D
## What it should look like: https://ibb.co/wRgP68g

*You are done setting up and screening SSN!*

*General Info #1*
# To stop SSN CNC run the following command:
pkill screen
## What it should look like: https://ibb.co/xxxxxxx (Will add this in future update)

# How to login to SSN CNC

1. Screen SSN_AUTO.sh
2. Open KiTTY or PuTTY or Termius.
3. On the main page:
   1. Set the host field to your server IP.
   2. Set the port field to `1337`. (or any custom port you requested)
   3. Set the connection type to `SSH`.
   4. Click connect.
   5. Credentials are in: assets/default_login.info

# If you still require assistance, please contact https://t.me/tcpsyn





# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #





# SSN Security Tips! - @tcpsyn !

1. Set up your API with Cloudflare! (https://cloudflare.com)
*How To*
Message @tcpsyn on Telegram!

2. Whitelist so ONLY Cloudflare IP addresses can connect to your API!
*How To*
Message @tcpsyn on Telegram!

3. Set up SSN Proxy to protect your backend! (https://t.me/tcpsynack)
*How To*
Message @tcpsyn on Telegram!

3. Whitelist so ONLY your SSN Proxy IP addresses can connect to your CNC!
*How To*
Message @tcpsyn on Telegram!





# Check out https://t.me/tcpsyn_bot for other Space services!

# IGNORE THIS IF YOU ARE NOT AN SSN PRO:

sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install screen jq zip unzip curl phpmyadmin mysql-server mysql-client -y

RBkijsHcqLJpiSTq7hrSsfdpQQq6KE6a?!

sudo mysql
CREATE DATABASE db834674;
CREATE USER 'user723432'@'localhost' IDENTIFIED BY 'RBkijsHcqLJpiSTq7hrSsfdpQQq6KE6a?!';
GRANT ALL PRIVILEGES ON * . * TO 'user723432'@'localhost';
FLUSH PRIVILEGES;
exit
cd CNC
chmod 777 *
./SSN
screen -dmS AUTO ./SSN_AUTO.sh
