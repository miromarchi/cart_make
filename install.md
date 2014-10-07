1) sudo rm -rf cartac4
2) mkdir cartac4; cd cartac4; drush make --working-copy --no-cache ../cart_make/cart.make .
2) mv sites/all/libraries/simplepie/SimplePie.compiled.php sites/all/modules/contrib/feeds/libraries/simplepie.compiled.php
3) drush si cart_profile --account-name=admin --account-pass=admin --db-url=mysql://usr:pass@localhost/cartac4 --db-prefix=cart_ --locale=en
4) cp -R sites/all/themes/custom/cart_theme/images sites/default/files/structure
5) chmod a-w sites/default/; chmod a-w sites/default/settings.php
6) drush fra -y

TODO
- [ ] content complete
- [ ] images
- [x] permissions
- [x] login/logout menu items
- [x] overrides
