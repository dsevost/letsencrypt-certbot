FROM fedora

ARG YUM

RUN \
    YUM=${YUM:="dnf"} ; \
    $YUM install -y certbot && \
    $YUM clean all

CMD /bin/bash

#RUN env
