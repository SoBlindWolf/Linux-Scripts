RELEASE=unknown
version=$( *-release -r | grep -oP "[0-9]+" | head -1 )
if lsb_release -d | grep -q "CentOS"; then
    RELEASE=centos$version
elif lsb_release -d | grep -q "Ubuntu"; then
    RELEASE=ubuntu$version
fi
if $RELEASE=ubuntu$version
	INSTALLCMD=apt-get
elif $RELEASE=centos$version
	INSTALLCMD=yum

while true; do
    read -p "Do you wish to install Pterodactyl on $RELEASE [Y/n]" yn
    case $yn in
        [Yy]* ) sudo curl -sSL https://get.docker.com/ | sh && sudo $INSTALLCMD update && sudo $INSTALLCMD install make ncdu subversion -y && sudo $INSTALLCMD autoremove -y && sudo $INSTALLCMD clean -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
