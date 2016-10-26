echo "This will create a new VirtualHost file..."
read -p "Client ID: " client
read -p "Main Domain: " domain
read -p "Email User: " email
#read -p "Directory: " dir
echo "This will create a user with ID $client with $domain with the email $email@$domain and their website will be located in /var/www/html/clients/$client/"
