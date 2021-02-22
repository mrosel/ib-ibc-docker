wget https://github.com/IbcAlpha/IBC/releases/download/3.8.5/IBCLinux-3.8.5.zip
unzip IBCLinux-3.8.5.zip -d /opt/ibc
rm -f IBCLinux-3.8.5.zip

cd /opt/ibc
chmod o+x *.sh */*.sh

# TWS_MAJOR_VRSN=981
# IBC_INI=/opt/ibc/config.ini
# TRADING_MODE=
# TWOFA_TIMEOUT_ACTION=exit
# IBC_PATH=/opt/ibc
# TWS_PATH=~/Jts
# TWS_SETTINGS_PATH=
# LOG_PATH=~/ibc/logs
# TWSUSERID=
# TWSPASSWORD=
# FIXUSERID=
# FIXPASSWORD=
# JAVA_PATH=
# HIDE=

# /opt/ibc/scripts/displaybannerandlaunch.sh
