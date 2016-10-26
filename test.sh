a2sa="/etc/apache2/sites-available/"
webdir="/var/www/html/clients"
ddom="example.domain"
ddem="webmaster@example.domain"
ddir="/var/www/html/clients/example"

echo "This will create a new VirtualHost file..."
read -p "Client ID: " cli
read -p "Main Domain: " cdom
read -p "Email User: " cdem
echo "This will make a vhost with Client as $cli with $cdom using the email address $cdem@$cdom with website located in $webdir/$cli/"
cdir="$webdir/$cli"
ccem="$cdem@$cdom"

while true; do
    read -p "Is this information correct? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo mkdir $ddir 
		&& cd $a2sa 
		&& sudo cp 000-$ddom.conf 000-$cdom.conf 
		&& sudo sed -i "s/$ddem/$ccem/g" 000-$cdom.conf 
		&& sudo sed -i "s/$ddom/$cdom/g" 000-$cdom.conf 
		&& sudo sed -i "s|$webdir|$cdir|g" 000-$cdom.conf 
		&& sudo mv $ddir $cdir; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
#sudo mkdir $ddir
#cd $a2sa && sudo cp 000-$ddom.conf 000-$cdom.conf
#sudo sed -i "s/$ddem/$ccem/g" 000-$cdom.conf
#sudo sed -i "s/$ddom/$cdom/g" 000-$cdom.conf
#sudo sed -i "s|$webdir|$cdir|g" 000-$cdom.conf
#sudo mv $ddir $cdir
