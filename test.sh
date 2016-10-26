a2sa="/etc/apache2/sites-available/"
webdir="/var/www/html/clients"
ddom="example.domain"
ddem="webmaster@example.domain"
ddir="/var/www/html/clients/example"

echo "This will create a new VirtualHost file..."
read -p "Client ID: " client
read -p "Main Domain: " cdom
read -p "Email User: " cdem
echo "This will make a vhost with Client as $client with $domain using the email address $email@$domain with website located in $webdir/$client/"
cdir="$webdir/$client/"
cd $a2sa && sudo cp 00-$ddom.conf 00-$cdom.conf
sudo sed -i "s/$ddom/$cdom/g" 00-$cdom.conf
sudo sed -i "s/$ddem/$cdem/g" 00-$cdom.conf
sudo sed -i "s/$ddir/$cdir/g" 00-$cdom.conf
