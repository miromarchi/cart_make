api = 2
core = 7.x

projects[drupal][version] = 7.30
; Patch sssue "String offset cast notice in field_invoke_method_multiple()" - let's try patch 2 which is to be RTBC
projects[drupal][patch][1824820] = https://www.drupal.org/files/string-offset-cast-1824820-2.patch

; Contrib
; Tools
projects[ctools][subdir] = contrib
projects[libraries][subdir] = contrib
projects[diff][subdir] = contrib
projects[features][subdir] = contrib
projects[strongarm][subdir] = contrib
projects[views][subdir] = contrib
projects[views_bulk_operations][subdir] = contrib
projects[pathauto][subdir] = contrib

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
projects[leaflet_markercluster][subdir] = contrib
projects[leaflet_more_maps][subdir] = contrib
projects[ip_geoloc][subdir] = contrib

; entity and fields
projects[entity][subdir] = contrib
projects[token][subdir] = contrib
projects[entityreference][subdir] = contrib
projects[entityreference_autocreate][subdir] = contrib
projects[field_group][subdir] = contrib
projects[entity_view_mode][subdir] = contrib
projects[references_dialog][subdir] = contrib
projects[color_field][subdir] = contrib
projects[link][subdir] = contrib
projects[flag][subdir] = contrib
projects[content_complete][subdir] = contrib
; projects[conditional_fields][subdir] = contrib
projects[addressfields][subdir] = contrib
projects[addressfields_tokens][subdir] = contrib

; Feeds
projects[feeds][subdir] = contrib
projects[feeds][patch][2237177] = https://www.drupal.org/files/issues/feeds-date_import_fix.patch
projects[feeds_jsonpath_parser][subdir] = contrib
projects[feeds_tamper][subdir] = contrib
projects[instagram_feeds][subdir] = contrib
projects[job_scheduler][subdir] = contrib
projects[feeds_jsonpath_parser][subdir] = contrib
projects[instagram_feeds_plugins][subdir] = contrib
projects[instagram_feeds][subdir] = contrib
projects[instagram_feeds_moderation][subdir] = contrib


; others
projects[manualcrop][subdir] = contrib
; projects[better_exposed_filters][subdir] = contrib
projects[wysiwyg][subdir] = contrib
projects[colorbox][subdir] = contrib
; projects[select_with_style][subdir] = contrib
projects[masonry][subdir] = contrib
projects[masonry_views][subdir] = contrib

; Features
; projects[ ][download][type] = git
; projects[ ][download][url] = git@github.com:miromarchi/ .git
; projects[rbv_com_fields][type] = module
; projects[rbv_com_fields][subdir] = features

; Themes
; projects[kalatheme][type] = theme
; projects[kalatheme][subdir] = contrib

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

; the next file is to be moved into modules/contrib/feeds_jsonpath_parser/
libraries[jsonpath][download][type] = file
libraries[jsonpath][download][url] = http://jsonpath.googlecode.com/files/jsonpath-0.8.1.php
libraries[jsonpath][directory_name] = jsonpath
libraries[jsonpath][type] = library

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

; the next file is to be moved into modules/contrib/feeds/libraries/simplepie.compiled.php
libraries[simplepie][download][type] = file
libraries[simplepie][download][url] = https://github.com/downloads/simplepie/simplepie/SimplePie.compiled.php
libraries[simplepie][directory_name] = simplepie
libraries[simplepie][type] = library

libraries[masonry][download][type] = "get"
libraries[masonry][download][url] = "http://desandro.github.io/masonry/jquery.masonry.min.js"
libraries[masonry][directory_name] = "masonry"
libraries[masonry][type] = library

; Profile
; projects[cart_profile][type] = profile
; projects[cart_profile][download][type] = git
; projects[cart_profile][download][url] = git@github.com:miromarchi/cart_profile.git
