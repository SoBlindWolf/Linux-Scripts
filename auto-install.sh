while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install screen build-essential curl openssh-server apache2 mysql-server php7.0 php7.0-mcrypt php7.0-bz2 -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to install opt packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo apt-get update && sudo apt-get install make git svn -y && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done