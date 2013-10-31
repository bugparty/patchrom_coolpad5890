#!/system/bin/sh
# backup or restore information at restore mode.
# writen by gongyuan at 2012.01.28
# Usage: restore_mount.sh <0|1>,<1|2>
#        <0|1> for operation
#        0: mount, 1: unmount
#        <1|2> for block
#        1 : sdcard
#        2 : external_sd
#        pkg_name for the name of package
#        restore_mount.sh 0,1
#        restore_mount.sh 1,2
#  Output:     
#        yulong.restore.status
#        [start/mountfail/mountsucess/unmountfail/unmountsucess/finish]
#=================================[START]===================================== 
setprop yulong.restore.status start

#LOG_NAME="${0}:"
LOG_TAG="YLLOG:RESTORE_MOUNT "


# The log function 
logi ()
{
    /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
    #/system/bin/log -t $LOG_TAG -p i "$@"
}

#Remove file
clearfile()
{
    if [ -f $1 ] ; then
        rm $1
    fi
}

logi "args: [$*]"
# if the arguments are wrong
if [ -z $1 ] ; then
    logi "Usage: restore_mount.sh <0|1>,<1|2>"
    exit 1
fi

# Parse the input arguments 
status=${1:0:1}
block=${1:2:1}

if [ $block = "1" ] ; then
    dev_block="/mnt/sdcard"
    dev_block_name="sdcard"
elif [ $block = "2" ] ; then
    dev_block="/mnt/sdcard/external_sd"
    dev_block_name="external_sd"
fi

if [ $status = "0" ] ; then
    #Mount sdcard
    #ok: read information of sdcard mount
    #rw: sdcard is read and write availble
    #Mount sdcard until sdcard is mounted and rw
    ok=`mount | busybox grep "$dev_block"`
    busybox echo "$ok">/data/mount.txt
    rw=`busybox grep 'rw' /data/mount.txt`
    logi "ok = $ok"
    logi "rw = $rw"

    if [ -z $ok ] || [ -z $rw] ; then
        logi "get ready to mount "
        vdc volume mount $dev_block
        sleep 2
        ok=`mount | busybox grep "$dev_block_name"`
        busybox echo "$ok">/data/mount.txt
        rw=`busybox grep 'rw' /data/mount.txt`
    fi

    ok=`mount | busybox grep "$dev_block_name"`
    busybox echo "$ok">/data/mount.txt
    rw=`busybox grep 'rw' /data/mount.txt`
    logi "ok = $ok"
    logi "rw = $rw"
    if [ -z $ok ] || [ -z $rw] ; then
        setprop yulong.mountservice.status mountfail
        logi "$dev_block mount fail"
    else
        setprop yulong.restore.status mountsucess
        logi "$dev_block mount sucess"
        clearfile /data/mount.txt
    fi
fi

if [ $status = "1" ] ; then
    #Umount sdcard
    ok=`mount | busybox grep "$dev_block_name"`
    busybox echo "$ok">/data/mount.txt
    if [ -z $ok ] ; then
       logi "$dev_block is not mounted"
    else
       vdc volume unmount $dev_block
       sleep 2
       ok=`mount | busybox grep '$dev_block_name'`
       if [ -z $ok ] ; then
            setprop yulong.restore.status unmountsucess
            logi "$dev_block unmount sucess"
       else
            setprop yulong.restore.status unmountfail
            logi "$dev_block unmount fail"
       fi
    fi
fi

exit 0
#===================================[END]=====================================
																																			    
