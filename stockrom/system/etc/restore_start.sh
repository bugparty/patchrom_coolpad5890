#!/system/bin/sh
# backup or restore information at restore mode.
# writen by gongyuan at 2012.01.28
# Usage: restore_start.sh <1|2>,<1|2|3|4>
#        <1|2> /for operation
#        1:mod data/data 2:restore mod /data/data
#        <1|2|3|4> for path
#        1 : sdcard/coolpad/apk
#        2 : sdcard/bakup/apk
#        3 : sdcard/external_sd/coolpad/apk
#        4 : sdcard/external_sd/backup/app
#        pkg_name for the name of package
#        restore_start.sh 0,1
#        restore_start.sh 1,1
#  Output:     
#        yulong.restore.status
#        [start/error/finish]
#=================================[START]===================================== 
setprop yulong.restore.status start

#LOG_NAME="${0}:"
LOG_TAG="YLLOG:RESTORE_START "


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
if [ -z $1 ]
then
    logi "Usage: restore_start.sh <1|2>,<1|2|3|4>"
    exit 1
fi

# Parse the input arguments 
mod=${1:0:1}
path=${1:2:1}

# decide the where to backup 
if [ $path = "1" ]; then
    bkdir="/sdcard/coolpad/apk"
elif [ $path = "2" ]; then
    bkdir="/tombstones/coolpad/apk"
elif [ $path = "3" ]; then
    bkdir="/sdcard/external_sd/coolpad/apk"
elif [ $path = "4" ]; then
    bkdir="/sdcard/external_sd/backup/app"
fi

backup_store_dir="/data-bak"

##Chmod 775 all files before backup 
if [ $mod = "1" ] ; then
    cd $backup_store_dir/data/
    chmod -R 775 *
    cd $backup_store_dir/app/
    chmod -R 775 *
    cd /
    setprop yulong.restore.status finish
    exit 0
fi

if [ $mod = "2" ] ; then
    cd $backup_store_dir/data/
    chmod -R 770 *
    cd $backup_store_dir/app/
    chmod -R 770 *
    cd /
    setprop yulong.restore.status finish
    exit 0
fi

#Save log at /data/log/restorelog when sh is start
log_tmp_dir=/data/log/restorelog
mkdir -p $log_tmp_dir 
logcat -v time > $log_tmp_dir/logcat.txt &
dmesg > $log_tmp_dir/dmesg.txt 
busybox tar -cvzf $log_tmp_dir/anr_tombstones.tar.gz $backup_store_dir/anr $backup_store_dir/tombstones /data/anr /data/tombstones 

if [ -d $bkdir ] ; then
   logi "$bkdir is exsit!"
else
   mkdir -p $bkdir &>/dev/null
fi

if [ -d $bkdir/app ] ; then
   logi "$bkdir/app is exsit!"
else
   mkdir -p $$bkdir/app &>/dev/null
fi

#Creat log directory
#$restore_log_dir: sdcard/restorelog
mkdir -p $restore_log_dir &>/dev/null

#Save log at /sdcard/log/restorelog when sh is start
log_dir=/sdcard/log/restorelog
mkdir -p $log_dir 
logcat -v time > $log_dir/logcat.txt &
dmesg > $log_dir/dmesg.txt 
busybox tar -cvzf $log_dir/anr_tombstones.tar.gz $backup_store_dir/anr $backup_store_dir/tombstones /data/anr /data/tombstones 


##Backup and restore account database
##Account database file: /data/system/users/0/accounts.db  ; /data/system/users/0/accounts.db-journal
mkdir -p $bkdir/Accounts
busybox cp -f $backup_store_dir/system/users/0/accounts.db $bkdir/Accounts
busybox cp -f $backup_store_dir/system/users/0/accounts.db-journal $bkdir/Accounts
logi "backup Accounts"
			    
																	    
##Backup and restore theme
##Get value of persist.sys.ui.theme.path . 
##1. Using default setting when  persist.sys.ui.theme.path equals system/lib.
##2. Saving value of persist.sys.ui.theme.path and persist.sys.ui.theme.enable in theme.txt, 
##    when path equals /data/data/theme.
##   Setting old value of persist.sys.ui.theme.path and persist.sys.ui.theme.enable,
##    when theme package is restored.
theme_path=`getprop persist.sys.ui.theme.path`
theme_enable=`getprop persist.sys.ui.theme.enable`
if [ $theme_path = "system/lib/uitechno/defaulttheme" ] ; then
    logi "Using default theme"
elif [ $theme_path = "/data/data/theme" ] ; then
					  
    if [ -f $bkdir/theme.txt ] ; then
        rm  $bkdir/theme.txt
        touch $bkdir/theme.txt
    else
        touch $bkdir/theme.txt
    fi
    echo $theme_path >> $bkdir/theme.txt        
    echo $theme_enable >> $bkdir/theme.txt
fi

setprop yulong.restore.status finish
exit 0
#===================================[END]=====================================

