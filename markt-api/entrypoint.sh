#! /bin/sh
    set -e
    GREEN='\033[0;32m'
    BOLD='\033[1m'

    echo -e "${GREEN} Installing composer dependencies"
    composer install

    echo -e "${GREEN} Running composer autoload"
    composer dump-autoload --optimize

    echo -e "${GREEN} Setting permissions"
    find storage -type d -print0 | xargs -0 chmod 775
    find storage -type f -print0 | xargs -0 chmod 664

    echo -e "${GREEN} Starting app with ${BOLD}$@"

    "$@"