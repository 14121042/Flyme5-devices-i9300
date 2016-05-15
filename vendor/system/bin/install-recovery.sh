#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8767488 f45d3afc871cc81a76e190d4678f59a3af3d7d11 6004736 2f1f79a50408636b14ed8e69ac01e3765c9c3345
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:8767488:f45d3afc871cc81a76e190d4678f59a3af3d7d11; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:6004736:2f1f79a50408636b14ed8e69ac01e3765c9c3345 EMMC:/dev/block/mmcblk0p6 f45d3afc871cc81a76e190d4678f59a3af3d7d11 8767488 2f1f79a50408636b14ed8e69ac01e3765c9c3345:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
