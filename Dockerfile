# syntax=docker/dockerfile-upstream:1-labs
FROM mcr.microsoft.com/devcontainers/base:bullseye as base

RUN <<-EOF
  apt-get update
  apt-get install -y --no-install-recommends \
    pkg-config cmake clang
  rm -rf /var/lib/apt/lists/*
EOF

USER vscode
WORKDIR /home/vscode

RUN <<-EOF
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    --profile default \
    --default-toolchain nightly-2023-03-13
EOF

FROM base as sccache
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install sccache
EOF

FROM base as cargo-watch
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install cargo-watch
EOF

FROM base as nu
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install nu
EOF

FROM base as coreutils
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install coreutils 
EOF

FROM base as starship
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install starship
EOF

FROM base as exa
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install exa
EOF

FROM base as bat
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install bat
EOF

FROM base as ripgrep
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install ripgrep
EOF

FROM base as fd-find
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install fd-find
EOF

FROM base as du-dust
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install du-dust
EOF

FROM base as zellij
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install zellij
EOF

FROM base as mprocs
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install mprocs
EOF

FROM base as gitui
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install gitui
EOF

FROM base as bacon
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install bacon
EOF

FROM base as cargo-info
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install cargo-info
EOF

FROM base as speedtest-rs
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install speedtest-rs
EOF

FROM base as rtx-cli
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install rtx-cli
EOF

FROM base as bottom
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install bottom
EOF

FROM base as procs
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install procs
EOF

FROM base as sd
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install sd
EOF

FROM base as tokei
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install tokei
EOF

FROM base as hyperfine
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install hyperfine
EOF

FROM base as bandwhich
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install bandwhich
EOF

FROM base as delta
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install git-delta
EOF

FROM base as zoxide
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install zoxide
EOF

FROM base as broot
RUN bash -s <<-EOF
  source ~/.cargo/env
  cargo install broot
EOF


FROM base as runtime

USER vscode

COPY --chown=vscode --from=sccache /home/vscode/.cargo/bin/sccache .cargo/bin/sccache
COPY --chown=vscode --from=cargo-watch /home/vscode/.cargo/bin/cargo-watch .cargo/bin/cargo-watch
COPY --chown=vscode --from=nu /home/vscode/.cargo/bin/nu .cargo/bin/nu
COPY --chown=vscode --from=coreutils /home/vscode/.cargo/bin/coreutils .cargo/bin/coreutils
COPY --chown=vscode --from=starship /home/vscode/.cargo/bin/starship .cargo/bin/starship
COPY --chown=vscode --from=exa /home/vscode/.cargo/bin/exa .cargo/bin/exa
COPY --chown=vscode --from=bat /home/vscode/.cargo/bin/bat .cargo/bin/bat
COPY --chown=vscode --from=ripgrep /home/vscode/.cargo/bin/rg .cargo/bin/rg
COPY --chown=vscode --from=fd-find /home/vscode/.cargo/bin/fd .cargo/bin/fd
COPY --chown=vscode --from=du-dust /home/vscode/.cargo/bin/dust .cargo/bin/dust
COPY --chown=vscode --from=zellij /home/vscode/.cargo/bin/zellij .cargo/bin/zellij
COPY --chown=vscode --from=mprocs /home/vscode/.cargo/bin/mprocs .cargo/bin/mprocs
COPY --chown=vscode --from=gitui /home/vscode/.cargo/bin/gitui .cargo/bin/gitui
COPY --chown=vscode --from=bacon /home/vscode/.cargo/bin/bacon .cargo/bin/bacon
COPY --chown=vscode --from=cargo-info /home/vscode/.cargo/bin/cargo-info .cargo/bin/cargo-info
COPY --chown=vscode --from=speedtest-rs /home/vscode/.cargo/bin/speedtest-rs .cargo/bin/speedtest-rs
COPY --chown=vscode --from=rtx-cli /home/vscode/.cargo/bin/rtx .cargo/bin/rtx
COPY --chown=vscode --from=bottom /home/vscode/.cargo/bin/btm .cargo/bin/btm
COPY --chown=vscode --from=procs /home/vscode/.cargo/bin/procs .cargo/bin/procs
COPY --chown=vscode --from=sd /home/vscode/.cargo/bin/sd .cargo/bin/sd
COPY --chown=vscode --from=tokei /home/vscode/.cargo/bin/tokei .cargo/bin/tokei
COPY --chown=vscode --from=hyperfine /home/vscode/.cargo/bin/hyperfine .cargo/bin/hyperfine
COPY --chown=vscode --from=bandwhich /home/vscode/.cargo/bin/bandwhich .cargo/bin/bandwhich
COPY --chown=vscode --from=delta /home/vscode/.cargo/bin/delta .cargo/bin/delta
COPY --chown=vscode --from=zoxide /home/vscode/.cargo/bin/zoxide .cargo/bin/zoxide
COPY --chown=vscode --from=broot /home/vscode/.cargo/bin/broot .cargo/bin/broot

COPY --chown=vscode git/.gitconfig .gitconfig
COPY --chown=vscode nushell/*.nu .config/nushell/
