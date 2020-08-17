#Kernel and init
fastboot flash boot_a hybris-boot.img

#Root and home filesystems
fastboot flash userdata sailfish.img001

#vendor_b is used for /opt
fastboot flash vendor_b vendor.img001

#system_b is used for the factory restore images
fastboot flash system_b fimage.img001
