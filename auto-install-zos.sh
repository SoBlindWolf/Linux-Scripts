while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add - && echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list &&  && sudo wget https://download.teamviewer.com/download/teamviewer_i386.deb && sudo "teamviewer_i386.deb" && sudo "weblinux-deb" && sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install apt-transport-https libjpeg62 firefox thunderbird virtualbox bleachbit compiz compizconfig-settings-manager compiz-fusion-plugins-extra compiz-fusion-plugins-main compiz-plugins hexchat skypeforlinux steam wireshark git subversion openjdk-8-jdk -y && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
