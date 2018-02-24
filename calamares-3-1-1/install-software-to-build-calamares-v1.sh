#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#software from 'normal' repositories
sudo pacman -S --noconfirm --needed qt5-translations 
sudo pacman -S --noconfirm --needed qt5-tools
sudo pacman -S --noconfirm --needed extra-cmake-modules 
sudo pacman -S --noconfirm --needed dmidecode  
sudo pacman -S --noconfirm --needed boost
sudo pacman -S --noconfirm --needed boost-libs
sudo pacman -S --noconfirm --needed yaml-cpp
sudo pacman -S --noconfirm --needed kpmcore
sudo pacman -S --noconfirm --needed kconfig
sudo pacman -S --noconfirm --needed kparts
sudo pacman -S --noconfirm --needed hwinfo
sudo pacman -S --noconfirm --needed kcoreaddons
 
packer -S --noconfirm --noedit pythonqt
packer -S --noconfirm --noedit mkinitcpio-openswap
 
echo "################################################################"
echo "###################     software installed      ################"
echo "################################################################"

#ki18n' 'solid' 'yaml-cpp' 'kpmcore>=3.1.0' 'mkinitcpio-openswap'
#         'boost-libs' 'hwinfo' 'qt5-svg' 'polkit-qt5' 'gtk-update-icon-cache' 'pythonqt>=3.2')
#makedepends=('extra-cmake-modules' 'qt5-tools' 'qt5-translations' 'git' 'boost')
