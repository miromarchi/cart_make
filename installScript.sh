#!/bin/bash         

echo "Enter new drupalRoot directory name (it assumes the make file will be in ../cart_make/cart.make from drupalRoot). The same name will serve as databaseName" 
read drupalRoot
echo "Enter database password"
read -s dbPass
dbPrefix=cart_
dbUsr=web
hostName=localhost
accountName=admin
accountPass=admin
localeLanguage=en
echo "Other variables assumed: (edit script to change)"
echo "dbPrefix = cart_"
echo "dbUsr = web"
echo "hostName = localhost"
echo "accountName = admin"
echo "accountPass = admin"
echo "localeLanguage = en"     
echo "Would you like to continue with the istallation? (y/n)"
read answer
if [ $answer = y ]; then 
    mkdir $drupalRoot && cd $drupalRoot
    drush cc drush
    drush make --concurrency=5 --working-copy --no-cache ../cart_make/cart.make .
    echo "### Make file finished"
    curl -o sites/all/modules/contrib/feeds/libraries/simplepie.compiled.php https://cloud.github.com/downloads/simplepie/simplepie/SimplePie.compiled.php
    echo "### Simplepie lib downloaded to sites/all/modules/contrib/feeds/libraries/simplepie.compiled.php"
    drush si cart_profile --account-name=$accountName --account-pass=$accountPass --db-url=mysql://$dbUsr:$dbPass@$hostName/$drupalRoot --db-prefix=$dbPrefix --locale=localeLanguage
    echo "### site install finished"
    cp -R sites/all/themes/custom/cart_theme/images sites/default/files/structure
    echo "### Theme images copied"
    drush fra -y
    drush cc all
    drush cron
    echo "### Installation script finished."
fi
