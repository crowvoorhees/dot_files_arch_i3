#! /bin/bash
echo 'sudo umount /boot' # unmount boot directory
echo 'sudo pacman -S linux' # reinstall cached linux package
echo 'reboot' # reboot system
