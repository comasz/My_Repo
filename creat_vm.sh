virt-install \
  --name vm4   \
  --ram 2048 \
  --disk path=/var/lib/libvirt/images/u19.qcow2,size=8 \
  --vcpus 2 \
  --os-type linux \
  --os-variant generic \
  --console pty,target_type=serial \
  --cdrom /home/yoda/Downloads/debian-11.2.0-amd64-netinst.iso
