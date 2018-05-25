# letsencrypt-certbot

oc new-app \
    --name acme-challenge \
    httpd~https://github.com/dsevost/letsencrypt-certbot \
    --strategy=docker \
    --build-env=YUM=yum