#README
#Use this script to flash the device.  The device must
#be in "fastboot" (or bootloader) mode.
#It may be nescessary to run this script as root.
#Usage: sh flash.sh

#Kernel and init
fastboot flash boot_a hybris-boot.img

#Root and home filesystems
fastboot flash userdata sailfish.img001

#vendor_b is used for /opt
fastboot flash vendor_b vendor.img001

#system_b is used for the factory restore images
fastboot flash system_b fimage.img001

#Splash Image
fastboot flash splash splash.img
