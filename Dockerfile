FROM fedora

RUN \
    dnf install -y certbot && \
    dnf clean all

CMD /bin/bash
