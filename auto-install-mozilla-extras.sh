while true; do
    read -p "Would you like to install Startpage HTTPS Privacy Search Engine? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo /usr/local/sbin/mozilla-extension-manager --install --global https://addons.mozilla.org/firefox/downloads/latest/startpage-https-privacy-search/addon-13036-latest.xml; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Would you like to install AdBlock Plus? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo /usr/local/sbin/mozilla-extension-manager --install --global https://addons.mozilla.org/firefox/downloads/latest/adblock-plus/addon-1865-latest.xpi; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Would you like to install Dark Background and Light Text? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo /usr/local/sbin/mozilla-extension-manager --install --global https://addons.mozilla.org/firefox/downloads/latest/dark-background-light-text/addon-497798-latest.xpi; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Would you like to install FT Deep Dark? [Y/n]" yn
    case $yn in
        [Yy]* ) sudo /usr/local/sbin/mozilla-extension-manager --install --global https://addons.mozilla.org/firefox/downloads/latest/ft-deepdark/platform:5/addon-295337-latest.xpi; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

