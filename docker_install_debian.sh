#!/bin/bash
apt-get remove docker docker-engine docker.io containerd runc && echo Done || echo Failed
apt-get update && echo Done || echo Failed
apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release && echo Done || echo Failed
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
apt-get update && echo Done || echo Failed
apt-get install docker-ce docker-ce-cli containerd.io && echo Done || echo Failed
