#!/bin/bash
sudo apt-get --ignore-missing install \
  qemu -y \
  dhclient -y \
  openbsd-netcat -y \
  virt-viewer -y\
  libvirt -y \
  dnsmasq -y \
  dmidecode -y \
  ebtables -y \
  virt-install -y \
  virt-manager -y \
  bridge-utils -y \
  vim -y
