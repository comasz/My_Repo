#!/bin/bash
apt-get remove docker docker-engine docker.io containerd runc || echo --FAILED--
apt-get update || echo --FAILED--
apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release || echo --FAILED--
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg || echo --FAILED--
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null || echo --FAILED--
apt-get update || echo --FAILED--
apt-get install docker-ce docker-ce-cli containerd.io || echo --FAILED--
