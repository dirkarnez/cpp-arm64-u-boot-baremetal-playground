https://stikonas.eu/wordpress/2019/09/15/blobless-boot-with-rockpro64/
git clone https://gitlab.denx.de/u-boot/u-boot.git/
git checkout v2023.04
cd u-boot
# Now copy ATF to top level of u-boot directory
cp path/to/arm-trusted-firmware/build/rk3399/release/bl31/bl31.elf atf-bl31
make rockpro64-rk3399_defconfig
make
