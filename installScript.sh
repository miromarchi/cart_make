#!/bin/bash         

echo "Would you like to begin installation? (y/n)"
read answer
if [ $answer = y ]
then 
    echo "Enter new drupalRoot directory name (it assumes the make file will be in ../cart_make/cart.make from drupalRoot). The same name will serve as databaseName" 
    read drupalRoot
    echo "Enter database password"
    read dbPass
    dbPrefix = cart_
    dbUsr = web
    hostName = localhost
    accountName = admin
    accountPass = admin
    accountMail = admin@localhost.it
    siteName = Cuban Art Worlwide
    siteMail = info@cubanartworldwide.com
    localeLanguage = en
    echo "Other variables assumed: (edit script to change)"
    echo "dbPrefix = cart_"
    echo "dbUsr = web"
    echo "hostName = localhost"
    echo "accountName = admin"
    echo "accountPass = admin"
    echo "accountMail = admin@localhost.it"
    echo "siteName = Cuban Art Worlwide"
    echo "siteMail = info@cubanartworldwide.com"
    echo "localeLanguage = en"     
    echo "Would you like to continue? (y/n)"
    read answer2
    elif [ $answer2 = y ]
    then 
        mkdir $drupalRoot && cd $drupalRoot
        drush cc drush
        drush make --working-copy --no-cache ../cart_make/cart.make .
        echo "Make file ended"
        mv sites/all/libraries/simplepie/SimplePie.compiled.php sites/all/modules/contrib/feeds/libraries/simplepie.compiled.php
        echo "Move simplepie lib ended"
        drush si cart_profile --account-name=$accountName --account-pass=$accountPass --account-mail=$accountMail --db-url=mysql://$dbUsr:$dbPass@$hostName/$drupalRoot --db-prefix=$dbPrefix --locale=localeLanguage --site-name=siteName --site-mail=siteMail
        echo "site install ended"
        cp -R sites/all/themes/custom/cart_theme/images sites/default/files/structure
        echo "Theme images copy ended"
        chmod a-w sites/default/; chmod a-w sites/default/settings.php
        drush fra -y
        echo "Set settings.php permission ended"
        echo "Script finished."
else
    echo "stop."
fi
