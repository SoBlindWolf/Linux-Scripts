while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo dpkg --add-architecture i386 && curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add - && echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list && sudo wget https://download.teamviewer.com/download/teamviewer_i386.deb && sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install libjpeg62:i386 libxinerama1:i386 libxrandr2:i386 libxtst6:i386 ca-certificates apt-transport-https firefox thunderbird virtualbox bleachbit compiz compizconfig-settings-manager compiz-plugins skypeforlinux hexchat steam wireshark git subversion openjdk-8-jdk -y && sudo dpkg -i teamviewer_i386.deb && sudo rm -rf teamviewer_i386.deb && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to install Firefox Addons/Extensions? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo wget https://raw.githubusercontent.com/SoBlindWolf/Linux-Scripts/master/auto-install-mozilla-extras.sh && sudo chmod +x auto-install-mozilla-extras.sh && sudo ./auto-install-mozilla-extras.sh && sudo rm auto-install-mozilla-extras.sh; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
