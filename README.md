# letsencrypt-certbot

```
$ oc new-build \
    --name acme-challenge \
    -i httpd \
    -e YUM=yum \
    --strategy=docker \
    https://github.com/dsevost/letsencrypt-certbot

$ oc new-app \
    --name acme-challenge-app \
    acme-challenge~https://github.com/openshift/httpd-ex.git


$ oc rsh <pod> req-cert.sh
```
