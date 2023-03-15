FROM ghcr.io/jonsson-analytics/devcontainer-base:main

COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/sccache:main \
     /home/vscode/.cargo/bin/sccache .cargo/bin/sccache
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/cargo-watch:main \
     /home/vscode/.cargo/bin/cargo-watch .cargo/bin/cargo-watch
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/nu:main \
     /home/vscode/.cargo/bin/nu .cargo/bin/nu
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/coreutils:main \
     /home/vscode/.cargo/bin/coreutils .cargo/bin/coreutils
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/starship:main \
     /home/vscode/.cargo/bin/starship .cargo/bin/starship
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/exa:main \
     /home/vscode/.cargo/bin/exa .cargo/bin/exa
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/bat:main \
     /home/vscode/.cargo/bin/bat .cargo/bin/bat
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/ripgrep:main \
     /home/vscode/.cargo/bin/rg .cargo/bin/rg
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/fd-find:main \
     /home/vscode/.cargo/bin/fd .cargo/bin/fd
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/du-dust:main \
     /home/vscode/.cargo/bin/dust .cargo/bin/dust
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/zellij:main \
     /home/vscode/.cargo/bin/zellij .cargo/bin/zellij
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/mprocs:main \
     /home/vscode/.cargo/bin/mprocs .cargo/bin/mprocs
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/gitui:main \
     /home/vscode/.cargo/bin/gitui .cargo/bin/gitui
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/bacon:main \
     /home/vscode/.cargo/bin/bacon .cargo/bin/bacon
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/cargo-info:main \
     /home/vscode/.cargo/bin/cargo-info .cargo/bin/cargo-info
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/speedtest-rs:main \
     /home/vscode/.cargo/bin/speedtest-rs .cargo/bin/speedtest-rs
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/rtx-cli:main \
     /home/vscode/.cargo/bin/rtx .cargo/bin/rtx
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/bottom:main \
     /home/vscode/.cargo/bin/btm .cargo/bin/btm
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/procs:main \
     /home/vscode/.cargo/bin/procs .cargo/bin/procs
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/sd:main \
     /home/vscode/.cargo/bin/sd .cargo/bin/sd
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/tokei:main \
     /home/vscode/.cargo/bin/tokei .cargo/bin/tokei
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/hyperfine:main \
     /home/vscode/.cargo/bin/hyperfine .cargo/bin/hyperfine
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/bandwhich:main \
     /home/vscode/.cargo/bin/bandwhich .cargo/bin/bandwhich
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/delta:main \
     /home/vscode/.cargo/bin/delta .cargo/bin/delta
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/zoxide:main \
     /home/vscode/.cargo/bin/zoxide .cargo/bin/zoxide
COPY --chown=vscode --from=ghcr.io/jonsson-analytics/devcontainer-base/apps/broot:main \
     /home/vscode/.cargo/bin/broot .cargo/bin/broot
