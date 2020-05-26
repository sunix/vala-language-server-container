FROM registry.fedoraproject.org/fedora-minimal:32

RUN microdnf -y install 'dnf-command(copr)' && \
    dnf -y copr enable prince781/vala-language-server && \
    microdnf -y install vala-language-server && \
    microdnf clean all
