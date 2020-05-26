FROM fedora:32

RUN dnf -y install 'dnf-command(copr)' && \
    dnf -y copr enable prince781/vala-language-server && \
    dnf -y install vala-language-server make vala gtk3-devel cairo-devel && \
    dnf clean all
