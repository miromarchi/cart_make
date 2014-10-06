1) mkdir cartac4 && cd cartac4
2) drush make --working-copy ../cart_make/cart.make .
3) mv sites/all/libraries/simplepie/SimplePie.compiled.php ../../modules/contrib/feeds/libraries/simplepie.compiled.php
4) cp sites/default/default.settings.php sites/default/settings.php
5) run installation
6) chmod a-w default/; chmod a-w sites/default/settings.php
7) cp -R sites/all/themes/custom/cart_theme/images/structure sites/default/files/
