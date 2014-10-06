1) mkdir cartacx; cd cartacx
2) drush make --working-copy ../cart_make/cart.make .
3) cd sites/all/libraries/simplepie; mv SimplePie.compiled.php ../modules/contrib/feeds/libraries/simplepie.compiled.php
4) cd sites; cp default/default.settings.php default/settings.php
5) chmod a-w default/; chmod a-w sites/default/settings.php
6) cp -R sites/all/themes/custom/cart_theme/images/structure sites/default/files/
