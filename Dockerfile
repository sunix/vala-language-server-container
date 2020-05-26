FROM fedora:32

RUN dnf -y install 'dnf-command(copr)' && \
    dnf -y copr enable prince781/vala-language-server && \
    dnf -y install vala-language-server && \
    dnf clean all
