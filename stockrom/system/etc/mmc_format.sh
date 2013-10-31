#!/system/xbin/sh

#mkfs for specified partition(name).

#if test -z "$1"; then
#    setprop    $RESOULT_PROP  argerr
    echo "usage: $0 partition-name"
    echo "  e.g: $0 udisk"
#    exit 1
#fi

#---------------------------------
# partition name, e.g. cache, udisk,...
PARTITION=$1

#---------------------------------
MMC_DEV=/dev/block/platform/msm_sdcc.3/by-num
#---------------------------------
AUTOBAK_PART=${MMC_DEV}/ATB
UDISK_PART=${MMC_DEV}/p20
#---------------------------------
FAT_MKFS="busybox mkfs.vfat"
EXT_MKFS="busybox mke2fs"
#make_ext4fs
#---------------------------------
##key: yulong.mkfs.resoult1
RESOULT_PROP=yulong.mkfs.${PARTITION}
WAIT_DEV_PROP=yulong.wait.${PARTITION}

setprop    $RESOULT_PROP  start
# convert resoult .
covert_ret()
{
  case "$1" in
   0) ret=1
    ;;
   ?) ret=0
   ;;
  esac
  return $ret
}
#----------------------------------------
# check & wait device ready.
# $1: <dev-name>
# e.g. /dev/block/mmcblk1  
wait_device()
{
  dev_chk=1
  dev_name=${1}
  chk_cnt=0

  echo "waitting for $dev_name ready ..."  
  while [ "$dev_chk" != "0" ]
  do
    dev=`ls $dev_name` > /dev/null 2>&1
    dev_chk=$?
    
    setprop  ${WAIT_DEV_PROP}  ${chk_cnt}s
    chk_cnt=`busybox expr $chk_cnt + 1`    
    
    if [ "$dev_chk" != "0" ] && [ $chk_cnt -lt 120 ] ; then
      # max to 120s
       sleep  1
    else
       break
    fi
    
  done
  
  if [ "$dev_chk" = "0" ] ; then
     echo "check $dev_name ok!"
  else
     echo "check $dev_name failure!"
  fi
}
#==========================
wait_device  $MMC_DEV
wait_udisk()
{
    ret=1
    chk_cnt=0
    while [ "$ret" != "0" ]
    do
      ok=`mount | busybox grep 'sdcard'`
      ret=$?

      echo $ret

      chk_cnt=`busybox expr $chk_cnt + 1`
      
    if [ "$ret" != "0" ] && [ $chk_cnt -lt 180 ] ; then
       sleep  1
    else
       break
    fi
    done
    
    if [ "$ret" = "0" ] ; then
       mkdir -p /sdcard/.presetup
       busybox cp /data/.presetup/presetres.tar.gz /sdcard/.presetup/presetres.tar.gz
       busybox tar -jx -f /sdcard/.presetup/presetres.tar.gz -C /sdcard/
       rm /data/.presetup/presetres.tar.gz
    fi
}

#===========================
case "$PARTITION" in
  udisk_tmp)    
    FILE=/data/udisk_format.txt
    if [ -e $FILE ] ; then
        exit 2
    fi
    $FAT_MKFS $UDISK_PART
    covert_ret $?
    ret=$?
    setprop    $RESOULT_PROP   end=$ret
    if [ "$ret" = "1" ] ; then
      if [ -e /data/.presetup/presetres.tar.gz ] ; then
        wait_udisk
      fi
      echo "format udisk ok" >> $FILE
    fi
  ;;
  udisk)
    $FAT_MKFS $UDISK_PART
    covert_ret $?
    setprop    $RESOULT_PROP   end=$?
  ;;
  cache)
    $EXT_MKFS -j  $CACHE_PART
    covert_ret $?
    setprop    $RESOULT_PROP   end=$?
   ;;
  data)
    $EXT_MKFS -j  $DATA_PART
    covert_ret $?
    setprop    $RESOULT_PROP   end=$?
   ;;
  autobak_tmp)
    AUTOBAKFILE=/data/autobak_format.txt
    if [ -e $AUTOBAKFILE ] ; then
        /system/bin/mmc_mount.sh  autobak
        exit 2
    fi
    $EXT_MKFS -j $AUTOBAK_PART
    covert_ret $?
    ret=$?
    setprop    $RESOULT_PROP   end=$ret
    if [ "$ret" = "1" ] ; then
      echo "format autobak ok" >> $AUTOBAKFILE
      /system/bin/mmc_mount.sh  autobak
    fi    
  ;;   
  autobak)
    $EXT_MKFS -j  $AUTOBAK_PART
    covert_ret $?
    setprop    $RESOULT_PROP   end=$?
   ;;   
  ?)
   setprop    $RESOULT_PROP  argerr
  ;;
  *)
   setprop    $RESOULT_PROP  argerr
  ;;
 esac


