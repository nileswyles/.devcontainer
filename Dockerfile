FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/base:jammy

COPY --chmod=700 linux_goodness/scripts/perl_modules /scripts/perl_modules
COPY --chmod=700 install_dependencies.pl /install_dependencies.pl
COPY --chmod=700 lame.pl /lame.pl
# TODO: until mounting works.
COPY --chmod=700 linux_goodness /linux_goodness
RUN apt update
RUN apt install perl -y
# RUN --mount=type=bind,src=/workspace,target=../ .devcontainer/install_dependencies.pl
RUN /install_dependencies.pl

ENTRYPOINT /lame.pl