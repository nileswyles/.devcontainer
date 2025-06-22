#!/usr/bin/perl

# assumes ubuntu jammy version-crucial dependencies
# https://packages.ubuntu.com/jammy/libssl-dev - current version of openssl is 3.0.2
#   should be fine if major stays at 3.

system("apt update");

system("ln -sf /bin/bash /bin/sh");

system("apt install -y g++");
system("apt install -y vim");
system("apt install -y clang");
system("apt install -y gdb");
system("apt install -y git");
system("apt install -y screen");

system("apt install -y libssl-dev");
system("apt install -y libcrypto-dev");

system("apt install -y postgresql-common");
system("apt install -y graphviz");
system("apt install -y libgraphviz-dev");
system("/usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -y");

# required for google-cloud-cpp
system("apt install -y cmake");
system("apt install -y curl");
system("apt install -y zip");
system("apt install -y unzip");
system("apt install -y tar");
system("apt install -y pkg-config");

# gcloud CLI
system("curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg");
system("echo \"deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main\" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list");
system("apt-get update && sudo apt-get install -y google-cloud-cli");

system("/scripts/cpp-reflection/install.pl");

system("apt install -y libpulse-dev");
system("apt install -y libbluetooth-dev");