FROM debian:jessie-slim
MAINTAINER BearPawLabs

# Install Wine
RUN apt-get update && apt-get install -y \
    wine \
    --no-install-recommends && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y \
    wine32 \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV HOME /root
WORKDIR $HOME    