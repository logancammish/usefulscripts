echo Please choose either:
echo 1. Connect to Mullvad service
echo 2. Disconnect from Mullvad service
echo now:
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
