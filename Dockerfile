FROM fedora

ARG YUM

USER 0

RUN \
    YUM=${YUM:="dnf"} ; \
    $YUM install -y certbot && \
    $YUM clean all

COPY req-cert.sh /usr/local/bin

USER 1001
