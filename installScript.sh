#!/bin/bash         

echo "Enter new drupalRoot directory name (it assumes the make file will be in ../cart_make/cart.make from drupalRoot). The same name will serve as databaseName" 
read drupalRoot
echo "Enter database password"
read dbPass
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
    echo "drush cache cleared"
    drush make --working-copy --no-cache ../cart_make/cart.make .
    echo "Make file ended"
    mv sites/all/libraries/simplepie/SimplePie.compiled.php sites/all/modules/contrib/feeds/libraries/simplepie.compiled.php
    echo "Move simplepie lib ended"
    drush si cart_profile --account-name=$accountName --account-pass=$accountPass --db-url=mysql://$dbUsr:$dbPass@$hostName/$drupalRoot --db-prefix=$dbPrefix --locale=localeLanguage
    echo "site install ended"
    cp -R sites/all/themes/custom/cart_theme/images sites/default/files/structure
    echo "Theme images copy ended"
    chmod a-w sites/default/; chmod a-w sites/default/settings.php
    drush fra -y
    echo "Set settings.php permission ended"
    drush cc all
    drush cron
    echo "Cache clear, cron... script finished."
fi
