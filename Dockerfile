FROM docker.io/debian:bookworm-slim

ENV GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
WORKDIR /workdir

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests --yes \
    'build-essential' \
    'ca-certificates' \
    'clang' \
    'flex' \
    'bison' \
    'g++' \
    'gawk' \
    'gettext' \
    'git' \
    'libncurses5-dev' \
    'libssl-dev' \
    'python3-distutils' \
    'rsync' \
    'unzip' \
    'zlib1g-dev' \
    'file' \
    'wget' \
    'ssh' \
    'jq' \
    'gcc-multilib' \
    'zstd' \
  && \
  rm -f -r '/var/lib/apt/' && \
  rm -f -r '/var/cache/apt/' && \
  useradd -m -s '/bin/bash' -U 'buildbot'

USER buildbot
