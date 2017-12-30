#!/bin/sh

COMMAND="$1"

case "${COMMAND}" in

    generate)
        mkdir -p /etc/ssl/certs/watchpoint
        cd /etc/ssl/certs/watchpoint

        openssl genrsa -out "watchpoint.key" 4096

        openssl req -new -key "watchpoint.key" -out "watchpoint.csr" -sha256 \
            -subj '/C=US/ST=CA/L=Irvine/O=Developer/CN=*.p.com'

        openssl x509 -req -days 750 -in "watchpoint.csr" -signkey "watchpoint.key" -sha256 \
            -out "watchpoint.crt" -extensions server
        ;;

    sh)
        /bin/sh
        ;;

    *)
        echo "Usage: {generate|sh}"
        exit 1

esac
