1) mkdir cartac4 && cd cartac4 && drush make --working-copy --no-cache ../cart_make/cart.make .
2) mv sites/all/libraries/simplepie/SimplePie.compiled.php sites/all/modules/contrib/feeds/libraries/simplepie.compiled.php
3) drush si cart_profile --account-name=admin --account-pass=admin --db-url=mysql://usr:pass@localhost/cartac4 --db-prefix=cart_ --locale=en
4) chmod a-w default/; chmod a-w sites/default/settings.php
5) cp -R sites/all/themes/custom/cart_theme/images/structure sites/default/files/
