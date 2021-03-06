# AnyKernel2 Ramdisk Mod Script
#
# Original and credits: osm0sis @ xda-developers
#
# Modified by sunilpaulmathew @ xda-developers.com

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Boeffla-Kernel (unofficial) by sunilpaulmathew @ xda-developers
do.devicecheck=1
do.initd=0
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=kltexx
device.name2=kltelra
device.name3=kltetmo
device.name4=kltecan
device.name5=klteatt
device.name6=klteub
device.name7=klteacg
device.name8=klte
device.name9=kltekor
device.name10=klteskt
device.name11=kltektt
device.name12=kltekdi
device.name13=kltedv
device.name14=kltespr
device.name15=
'; } # end properties

# shell variables
block=/dev/block/platform/msm_sdcc.1/by-name/boot;
add_seandroidenforce=1
supersu_exclusions=""
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod 775 $ramdisk/sbin
chmod 755 $ramdisk/sbin/busybox

chmod 775 $ramdisk/res
chmod -R 755 $ramdisk/res/bc
chmod -R 755 $ramdisk/res/misc

chown -R root:root $ramdisk/*;


## AnyKernel install
dump_boot;

# begin ramdisk changes

# init.rc

# init.tuna.rc

# fstab.tuna

# end ramdisk changes

write_boot;

## end install

