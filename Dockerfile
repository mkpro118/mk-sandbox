FROM ubuntu:22.04

SHELL ["bash", "-c"]

# Need to install wget to fetch sources from the internet
# Install GCC, G++, Python, CPython Headers, Build Essential tools like Make
RUN apt-get update && apt-get install --no-install-recommends -y wget build-essential python3.11 python3-pip python3-dev libpython3.11-dev\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Download Java 17
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.deb --no-check-certificate

# Install Java 17 and other necessary software
RUN apt-get update && apt-get install --no-install-recommends -y curl unzip vim \
 ./jdk-17_linux-x64_bin.deb \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Node.js v22
RUN curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install --no-install-recommends -y nodejs \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN source /root/.cargo/env

# Install Git
RUN apt-get update && apt-get install --no-install-recommends -y git\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Valgrind
RUN apt-get update && apt-get install --no-install-recommends -y valgrind\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Bash Completion
RUN apt-get update && apt-get install --no-install-recommends -y bash-completion\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN echo "source /etc/profile.d/bash_completion.sh" >> ~/.bashrc


# Shortcut for python3
RUN echo 'alias py=python3' >> ~/.bashrc
