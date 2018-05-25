#!/bin/bash

HOST_NAMES=${*:-$HOST_NAMES}

if [ -z "$HOST_NAMES" ] ; then
    echo "Syntax: $0 <HOST_NAME1 [HOST_NAME2 [...]]>"
    exit 1
fi

for h in $HOST_NAMES ; do
    hn+="-d $h "
done

certbot \
    --config-dir $HOME/letsencrypt/conf \
    --logs-dir=$HOME/letsencrypt/logs \
    --work-dir=$HOME certonly \
    --manual \
    --server https://acme-v02.api.letsencrypt.org/directory \
    $hn
