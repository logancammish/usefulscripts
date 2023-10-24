################################################
# For Unix-like systems, tested on Linux (Kernel 6.5.8)
# Connects to Mullvad VPN server nz-akl-wg-301
################################################
# Requires:
# 1. curl
# 2. wireguard (with /etc/wireguard as a valid path, and wg-quick as a valid terminal command)
# 3. A valid internet connection
# 4. super user permissions
################################################
# License: GNU General Public License v3.0
# Author: Logan Cammish
################################################
# hope this is useful to you!
################################################


echo Please choose either:
echo 1. Connect to Mullvad service (Wireguard)
echo 2. Disconnect from Mullvad service (Wireguard)
read option

if [ $option -eq 1 ]
then
    echo Please enter password to connect to Mullvad service
    sudo cd /etc/wireguard
    sudo wg-quick up nz-akl-wg-301
    curl https://am.i.mullvad.net/connected
elif [ $option -eq 2 ]
then
    echo Please enter password to disconnect to Mullvad service
    sudo cd /etc/wireguard
    sudo wg-quick down nz-akl-wg-301
    curl https://am.i.mullvad.net/connected
else
    echo Invalid input
fi
