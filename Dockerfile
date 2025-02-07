FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/base:jammy

RUN apt update
RUN apt install perl -y
RUN .devcontainer/install_dependencies.pl

ENTRYPOINT .devcontainer/lame.pl