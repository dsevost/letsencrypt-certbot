FROM fedora

ARG YUM

USER 0

RUN \
    YUM=${YUM:="dnf"} ; \
    $YUM install -y certbot && \
    $YUM clean all

CMD /bin/bash

USER 1000

#RUN env
