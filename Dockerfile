FROM nixos/nix
RUN echo 'experimental-features = nix-command flakes' | tee -a /etc/nix/nix.conf \
    && echo 'filter-syscalls = false' >> /etc/nix/nix.conf \
    && git config --global --add safe.directory '*'
WORKDIR /app