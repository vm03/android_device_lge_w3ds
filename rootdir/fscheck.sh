#!/sbin/bbx sh

FSTYPE=`/sbin/bbx blkid /dev/block/mmcblk0p34 | /sbin/bbx cut -d ' ' -f3 | /sbin/bbx cut -d '"' -f2`

if [ "$FSTYPE" == "ext4" ]
then
  /sbin/bbx rm /fstab_f2fs.w3ds
else
  /sbin/bbx cp -f /fstab_f2fs.w3ds /etc/recovery.fstab
  /sbin/bbx mv -f /fstab_f2fs.w3ds /fstab.w3ds
fi
