#!/bin/sh
rm -f woocommerce-onpage.zip
composer install
zip -9 \
--exclude '*.git*' \
--exclude './build.sh' \
--exclude './woocommerce-onpage.zip' \
--exclude './composer.*' \
--exclude './db-models/*' \
--exclude './storage/*' \
--exclude './theme-example/*' \
--exclude './log.txt' \
-r woocommerce-onpage.zip .
