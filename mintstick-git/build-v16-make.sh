#!/bin/bash
#https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_Clean_Chroot

search=$(basename "$PWD")
echo "We will start building "$search "now."


#### via clean chroot

#CHROOT=$HOME/Documents/chroot
#arch-nspawn $CHROOT/root pacman -Syu
#makechrootpkg -c -r $CHROOT

#echo "signing the package"
#gpg --detach-sign $search*pkg.tar.xz


# or via makepkg
makepkg --sign

echo "moving created files to repo"
mv $search*pkg.tar.xz ../../arcolinux_repo_iso/x86_64/
mv $search*pkg.tar.xz.sig ../../arcolinux_repo_iso/x86_64/

echo "deleting unnecessary build files"
find .  -not -name 'PKGBUILD'\
        -not -name 'MKPKG'\
        -not -name 'LICENCE.md'\
        -not -name 'install'\
        -not -name '*.prf'\
        -not -name '*.hook'\
        -not -name '*.conf'\
        -not -name 'LICENSE'\
        -not -name 'build-v*'\
        -not -name 'modprobe.d*'\
        -not -name '*.install'\
        -not -name '*.patch'\
        -not -name '*.png'\
        -not -name '*.jpg'\
        -not -name '*.cfg'\
        -not -name '*.desktop'\
        -delete


echo "################################################################"
echo "###################    build done         ######################"
echo "################################################################"
