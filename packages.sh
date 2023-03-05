#!/bin/sh

dnf --refresh upgrade

dnf install -y --allowerasing git  \
    vim-enhanced \
    x264 \
    x265 \
    fonts-ttf-Inconsolata \
    fonts-ttf-bitstream-vera \
    fonts-ttf-ubuntu \
    fonts-ttf-fontawesome \
    lame \
    dnf-utils \
    firewalld \
    geany \
    geany-plugins \
    geany-themes \
    pavucontrol-gtk \
    libxkbcommon-utils \
    acpid \
    task-codecs \
    gnome-disk-utility \
    vulkan \
    fwupd \
    vlc \
    telegram-desktop \
    audacious \
    audacious-plugins \
    audacious-pulse \
    audacious-jack \
    audacious-skins \
    fish \
    fonts-ttf-google-noto-sans-mono \
    fonts-ttf-google-noto-sans \
    fonts-ttf-google-noto-serif.noarch



#dnf install -y \*-firmware
dnf remove -y chromium
dnf remove -y ntp ntpdate
dnf remove -y chrony
dnf distro-sync
fc-cache -fv

