while true; do
    read -p "Do you wish to install main packages? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y && sudo rm -rf /etc/apt/sources.list.d/nginx-ubuntu-mainline-xenial.list* && sudo wget -P /etc/apt/sources.list.d/ https://raw.githubusercontent.com/SoBlindWolf/Linux-Scripts/master/configs/apt/nginx-ubuntu-mainline-xenial.list && sudo wget http://nginx.org/keys/nginx_signing.key && sudo apt-key add nginx_signing.key && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get purge apache2 php5-common -y && sudo apt-get remove apache2 php5-common -y && sudo apt-get install screen wget python-software-properties mysql-server mysql-client build-essential libgd2-xpm-dev curl tar unzip git openssh-server openssl nginx php7.0 php7.0-cli php7.0-fpm php7.0-mcrypt php7.0-bz2 php7.0-curl php7.0-gd php7.0-pdo php7.0-mbstring php7.0-tokenizer php7.0-bcmath php7.0-xml php7.0-mysql -y && sudo rm -rf nginx_signing.key && sudo apt-get autoremove -y && sudo apt-get clean -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
while true; do
    read -p "Do you wish to optimize nginx with SoBlindWolf's custom settings? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo mv /etc/nginx/nginx.conf /etc/nginx.conf.orig && sudo wget -P /etc/nginx/ https://raw.githubusercontent.com/SoBlindWolf/Linux-Scripts/master/configs/nginx/nginx.conf && sudo mv /etc/php/7.0/fpm/php.ini /etc/php/7.0/fpm/php.ini.orig && sudo wget -P /etc/php/7.0/fpm/ https://raw.githubusercontent.com/SoBlindWolf/Linux-Scripts/master/configs/php-fpm/php.ini && sudo mv /etc/php/7.0/fpm/pool.d/www.conf /etc/php/7.0/fpm/pool.d/www.conf.orig && sudo wget -P /etc/php/7.0/fpm/pool.d/ https://raw.githubusercontent.com/SoBlindWolf/Linux-Scripts/master/configs/php-fpm/www.conf && sudo mv /etc/php/7.0/fpm/php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf.orig && sudo wget -P /etc/php/7.0/fpm/ https://raw.githubusercontent.com/SoBlindWolf/Linux-Scripts/master/configs/php-fpm/php-fpm.conf && sudo service php7.0-fpm restart && sudo service nginx restart; break;;
        [Nn]* ) exit;;
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
