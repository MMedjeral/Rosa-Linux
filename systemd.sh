#!/bin/sh
systemctl disable iptables.service
systemctl mask iptables.service
systemctl enable --now firewalld.service
systemctl enable --now systemd-timesyncd.service
systemctl enable --now systemd-resolved.service
systemctl enable --now cups.service
#systemctl enable --now tlp.service

timedatectl set-ntp true
timedatectl set-timezone Europe/Paris

