#!/bin/sh
## https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md
EXPECTED_CHECKSUM="$(php -r 'copy("https://composer.github.io/installer.sig", "php://stdout");')"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
then
    >&2 echo 'ERROR: Invalid installer checksum'
    rm composer-setup.php
    exit 1
fi

php composer-setup.php --quiet
RESULT=$?
rm composer-setup.php

## reload path
. ~/.bashrc

composer global require "squizlabs/php_codesniffer=*"
composer global require dealerdirect/phpcodesniffer-composer-installer;
composer global require phpcompatibility/php-compatibility;
composer global require automattic/vipwpcs;
composer global require phpcompatibility/phpcompatibility-wp;
