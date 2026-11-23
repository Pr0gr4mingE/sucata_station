#!/bin/bash
qemu-system-aarch64 \
  -M virt \
  -cpu cortex-a53 \
  -m 512M \
  -nographic \
  -kernel output/images/Image \
  -initrd output/images/rootfs.cpio \
  -append "console=ttyAMA0" \
  -drive file=jogos.img,format=raw,if=virtio
