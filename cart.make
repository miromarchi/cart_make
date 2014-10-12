api = 2
core = 7.31

projects[drupal][version] = 7.31
; Patch isssue "String offset cast notice in field_invoke_method_multiple()" - let's try patch 2 which is to be RTBC
projects[drupal][patch][1824820] = https://www.drupal.org/files/string-offset-cast-1824820-2.patch

; Contrib
; Tools
projects[ctools][subdir] = contrib
projects[libraries][subdir] = contrib
projects[diff][subdir] = contrib
projects[features][subdir] = contrib
projects[features_extra][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[views][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[pathauto][subdir] = contrib
projects[module_filter][subdir] = contrib
projects[transliteration][subdir] = contrib
projects[jquery_update][subdir] = contrib
projects[simplify][subdir] = contrib
projects[uuid][subdir] = contrib
projects[metatag][subdir] = contrib
projects[imagecache_token][subdir] = contrib

; Panels
projects[panels][subdir] = contrib
projects[panelizer][subdir] = contrib

; date
projects[date][subdir] = contrib
projects[date_ical][subdir] = contrib
projects[calendar][subdir] = contrib
projects[calendar][patch][1471400] = https://www.drupal.org/files/issues/calendar-illegal_offset-1471400-78.patch

; geo
projects[geocoder][subdir] = contrib
projects[geofield][subdir] = contrib
projects[geophp][subdir] = contrib
projects[leaflet][subdir] = contrib
projects[leaflet][patch][2185767] = https://www.drupal.org/files/issues/field-formatter-errors-2185767-6.patch
projects[leaflet_markercluster][subdir] = contrib
projects[leaflet_more_maps][subdir] = contrib
projects[ip_geoloc][subdir] = contrib
projects[staticmap][subdir] = contrib

; entity and fields
projects[entity][subdir] = contrib
projects[token][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[entityreference_autocreate][subdir] = contrib
projects[references_dialog][subdir] = contrib
projects[field_group][subdir] = contrib
projects[entity_view_mode][subdir] = contrib
projects[color_field][subdir] = contrib
projects[link][subdir] = contrib
projects[content_complete][subdir] = contrib
projects[content_complete][version] = 1.x-dev
; projects[addressfield][subdir] = contrib
; projects[addressfield_tokens][subdir] = contrib
; projects[flag][subdir] = contrib
; projects[conditional_fields][subdir] = contrib
projects[file_entity][subdir] = contrib
projects[filefield_sources][subdir] = contrib

; Feeds
projects[feeds][subdir] = contrib
projects[feeds][patch][2237177] = https://www.drupal.org/files/issues/feeds-date_import_fix.patch
; projects[feeds_jsonpath_parser][subdir] = contrib
projects[feeds_tamper][subdir] = contrib
projects[job_scheduler][subdir] = contrib

; Others
projects[manualcrop][subdir] = contrib
projects[wysiwyg][subdir] = contrib
projects[colorbox][subdir] = contrib
projects[masonry][subdir] = contrib
projects[masonry_views][subdir] = contrib
; projects[better_exposed_filters][subdir] = contrib
; projects[select_with_style][subdir] = contrib
; projects[views_autocomplete_filters][subdir] = contrib
projects[menu_attributes][subdir] = contrib

; Features
projects[cart_calendar][download][type] = git
projects[cart_calendar][download][url] = git@github.com:miromarchi/cart_calendar.git
projects[cart_calendar][type] = module
projects[cart_calendar][subdir] = features

projects[cart_commons][download][type] = git
projects[cart_commons][download][url] = git@github.com:miromarchi/cart_commons.git
projects[cart_commons][type] = module
projects[cart_commons][subdir] = features

projects[cart_import_ical][download][type] = git
projects[cart_import_ical][download][url] = git@github.com:miromarchi/cart_import_ical.git
projects[cart_import_ical][type] = module
projects[cart_import_ical][subdir] = features

projects[cart_map][download][type] = git
projects[cart_map][download][url] = git@github.com:miromarchi/cart_map.git
projects[cart_map][type] = module
projects[cart_map][subdir] = features

projects[cart_type_catalog][download][type] = git
projects[cart_type_catalog][download][url] = git@github.com:miromarchi/cart_type_catalog.git
projects[cart_type_catalog][type] = module
projects[cart_type_catalog][subdir] = features

projects[cart_type_exhibit][download][type] = git
projects[cart_type_exhibit][download][url] = git@github.com:miromarchi/cart_type_exhibit.git
projects[cart_type_exhibit][type] = module
projects[cart_type_exhibit][subdir] = features

projects[cart_type_org][download][type] = git
projects[cart_type_org][download][url] = git@github.com:miromarchi/cart_type_org.git
projects[cart_type_org][type] = module
projects[cart_type_org][subdir] = features

projects[cart_type_person][download][type] = git
projects[cart_type_person][download][url] = git@github.com:miromarchi/cart_type_person.git
projects[cart_type_person][type] = module
projects[cart_type_person][subdir] = features

projects[cart_views_pages][download][type] = git
projects[cart_views_pages][download][url] = git@github.com:miromarchi/cart_views_pages.git
projects[cart_views_pages][type] = module
projects[cart_views_pages][subdir] = features

; Themes
projects[bootstrap][type] = theme
projects[bootstrap][subdir] = contrib

projects[cart_theme][download][type] = git
projects[cart_theme][download][url] = git@github.com:miromarchi/cart_theme.git
projects[cart_theme][type] = theme
projects[cart_theme][subdir] = custom

; Libraries
libraries[leaflet][download][type] = file
libraries[leaflet][download][url] = http://leaflet-cdn.s3.amazonaws.com/build/leaflet-0.7.3.zip
libraries[leaflet][directory_name] = leaflet
libraries[leaflet][type] = library

libraries[leaflet_markercluster][download][type] = git
libraries[leaflet_markercluster][download][url] = https://github.com/Leaflet/Leaflet.markercluster.git
libraries[leaflet_markercluster][directory_name] = leaflet_markercluster
libraries[leaflet_markercluster][type] = library

libraries[font-awesome][download][type] = file
libraries[font-awesome][download][url] = http://fortawesome.github.io/Font-Awesome/assets/font-awesome-4.2.0.zip
libraries[font-awesome][directory_name] = font-awesome
libraries[font-awesome][type] = library

libraries[jquery-simple-color][download][type] = git
libraries[jquery-simple-color][download][url] = https://github.com/recurser/jquery-simple-color.git
libraries[jquery-simple-color][directory_name] = jquery-simple-color
libraries[jquery-simple-color][type] = library

libraries[bgrins-spectrum][download][type] = file
libraries[bgrins-spectrum][download][url] = http://github.com/bgrins/spectrum/zipball/1.5.0
libraries[bgrins-spectrum][directory_name] = bgrins-spectrum
libraries[bgrins-spectrum][type] = library

libraries[iCalcreator][download][type] = file
libraries[iCalcreator][download][url] = https://github.com/iCalcreator/iCalcreator/archive/master.zip
libraries[iCalcreator][directory_name] = iCalcreator
libraries[iCalcreator][type] = library

libraries[masonry][download][type] = file
libraries[masonry][download][url] = http://desandro.github.io/masonry/jquery.masonry.min.js
libraries[masonry][directory_name] = masonry
libraries[masonry][type] = library

; the next file is to be moved into modules/contrib/feeds/libraries/simplepie.compiled.php
; libraries[simplepie][download][type] = file
; libraries[simplepie][download][url] = https://github.com/downloads/simplepie/simplepie/SimplePie.compiled.php
; libraries[simplepie][directory_name] = simplepie
; libraries[simplepie][type] = library

; the next file is to be moved into modules/contrib/feeds_jsonpath_parser/
; libraries[jsonpath][download][type] = file
; libraries[jsonpath][download][url] = http://jsonpath.googlecode.com/files/jsonpath-0.8.1.php
; libraries[jsonpath][directory_name] = jsonpath
; libraries[jsonpath][type] = library

; Profile
projects[cart_profile][type] = profile
projects[cart_profile][download][type] = git
projects[cart_profile][download][url] = git@github.com:miromarchi/cart_profile.git
