#! /bin/sh
    set -e
    GREEN='\033[0;32m'
    BOLD='\033[1m'

    NODE_MODULES_DIR=/var/www/html/node_modules
    if [ ! -d "$NODE_MODULES_DIR" ]; then
      echo -e "${GREEN} Installing node modules dependencies"
      npm install
    fi

    echo -e "${GREEN} Starting web with ${BOLD}$@"

    "$@"