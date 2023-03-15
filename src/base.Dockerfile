# syntax=docker/dockerfile-upstream:1-labs
FROM mcr.microsoft.com/devcontainers/base:alpine-3.17

ARG PROFILE
ARG TOOLCHAIN

RUN --mount=type=cache,target=/var/cache/apk <<-EOF
  apk update
  apk add pkgconfig cmake clang
EOF

USER vscode
WORKDIR /home/vscode

RUN <<-EOF
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y \
    --profile $PROFILE \
    --default-toolchain $TOOLCHAIN
  mkdir -p ~/.cargo/registry
EOF
