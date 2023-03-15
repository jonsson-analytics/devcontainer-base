# syntax=docker/dockerfile-upstream:1-labs
FROM ghcr.io/jonsson-analytics/devcontainer-base:main
RUN --mount=type=cache,target=/home/vscode/.cargo/registry \
bash -s <<-EOF
  sudo chown -R vscode:vscode ~/.cargo/registry
  source ~/.cargo/env
  cargo install exa
EOF
