wget https://github.com/IbcAlpha/IBC/releases/download/3.8.5/IBCLinux-3.8.5.zip
unzip IBCLinux-3.8.5.zip -d /opt/ibc

cd /opt/ibc
chmod o+x *.sh */*.sh

# /opt/ibc/gatewaystart.sh
# tail /root/ibc/logs/* -f
# export TWS_MAJOR_VRSN=981
# /opt/ibc/scripts/displaybannerandlaunch.sh