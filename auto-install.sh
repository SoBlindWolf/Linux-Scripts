while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get purge php5-common -y && sudo apt-get remove php5-common -y && sudo apt-get install screen wget apache2 apache2-utils python-software-properties mysql-server mysql-client build-essential libgd2-xpm-dev curl tar unzip git openssh-server openssl php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-mcrypt php7.0-bz2 php7.0-curl php7.0-gd php7.0-pdo php7.0-mbstring php7.0-tokenizer php7.0-bcmath php7.0-xml php7.0-mysql -y && sudo service apache2 restart && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to install opt packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo curl -sSL https://get.docker.com/ | sh && sudo apt-get update && sudo apt-get install make ncdu subversion -y && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
