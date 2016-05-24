while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get purge php5-common -y && sudo apt-get remove php5-common -y && sudo apt-get install screen wget apache2 apache2-utils python-software-properties php7.0 php7.0-mcrypt php7.0-bz2 libapache2-mod-php7.0 build-essential libgd2-xpm-dev curl openssh-server mysql-server -y && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to install opt packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo apt-get update && sudo apt-get install make git subversion -y && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
