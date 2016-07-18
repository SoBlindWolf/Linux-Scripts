while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo add-apt-repository ppa:noobslab/themes -y && sudo add-apt-repository ppa:noobslab/icons && sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install virtualbox bleachbit skype steam wireshark xapian-tools -y && sudo apt-get remove mintinstall -y && sudo apt-get install software-center -y && sudo mkdir /var/cache/software-center/xapian && sudo chown ${USER:=$(/usr/bin/id -run)} /etc/lsb-release && sudo sed -i 's/LinuxMint/Ubuntu/g' /etc/lsb-release && sudo chown root /etc/lsb-release && sudo chattr +i /etc/lsb-release && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to install theme/icons? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo mkdir -p /home/$USER/.icons && sudo wget https://www.ppload.com/api/files/download?id=1460735457 /home/$USER/.icons && tar xfz *.gz; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to install Dark theme for Ubuntu Software Center? (If NOT Installed)? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo apt-get update && cd /usr/share/software-center/ui/gtk3/css/ && sudo mv softwarecenter.css softwarecenter.css.backup && cd /usr/share/software-center/ui/gtk3/art/ && sudo mv stipple.png stipple.png.backup && cd && wget -O softwarecenter.css http://drive.noobslab.com/data/themes/delorean-dark-3.10/softwarecenter.css && sudo mv softwarecenter.css /usr/share/software-center/ui/gtk3/css/ && cd && wget -O stipple.png http://drive.noobslab.com/data/themes/delorean-dark-3.10/stipple.png && sudo mv stipple.png /usr/share/software-center/ui/gtk3/art/ && software=center && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to uninstall Dark theme for Ubuntu Software Center? (If Installed)? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo apt-get update && sudo killall software-center && cd /usr/share/software-center/ui/gtk3/css/ && sudo mv softwarecenter.css.backup softwarecenter.css && cd /usr/share/software-center/ui/gtk3/art/ && sudo mv stipple.png.backup stipple.png && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
