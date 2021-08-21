#!/bin/sh

sudo apt install -y php8.0-xml;

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

sudo mv composer.phar /usr/local/bin/composer

source ~/.bashrc

composer global require "squizlabs/php_codesniffer=*"
composer global require dealerdirect/phpcodesniffer-composer-installer;
composer global require phpcompatibility/php-compatibility;
composer global require automattic/vipwpcs;
composer global require phpcompatibility/phpcompatibility-wp;
