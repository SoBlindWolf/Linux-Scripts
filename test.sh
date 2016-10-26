a2sa="/etc/apache2/sites-available/"
webdir="/var/www/html/clients/"

echo "This will create a new VirtualHost file..."
read -p "Client ID: " client
read -p "Main Domain: " domain
read -p "Email User: " email
echo "This will make a vhost with Client as $client with $domain using the email address $email@$domain with website located in $webdir/$client/"

