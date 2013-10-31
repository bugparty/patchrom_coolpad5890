#!/system/bin/sh
# backup or restore apk prvite data.
# writen by Eric Yan at 2012.11.05
# modify by chenerlei at 2012.11.07
# modify by gongyuan at 2013.01.28
# Usage: restore_backup.sh <1|2|3|4>,package_path,package_name
#        <1|2|3|4> for backup_path
#        1 : sdcard/coolpad/apk
#        2 : sdcard/bakup/apk
#        3 : sdcard/external_sd/coolpad/apk
#        4 : sdcard/external_sd/backup/app
#        package_name for the name of package
#        package_path for the path of package
#        restore_backup.sh 1,package_path,package_name
#        restore_backup.sh 1,package_path,package_name
#  Output:     
#        yulong.restore.status
#        [start/error/finish]
#
#
#=================================[START]===================================== 

#Init property
setprop yulong.restore.status start
    
#LOG_NAME="${0}:"
LOG_TAG="YLLOG:RESTORE_BACKUP "


# The log function 
logi ()
{
    /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}


#package backup and restore function
#$1: /sdcard/coolpad/apk/  $2:package_name
package ()
{
    cd $backup_store_dir
    # file sync
    busybox usleep 100000
    # sync every database file
    ls -a $backup_store_dir/data/$2/databases | while read file
    do
        busybox fsync $backup_store_dir/data/$2/databases/${file} 
        logi "busybox fsync $backup_store_dir/data/$2/databases/${file}"         
    done
    busybox usleep 100000
    sync
        
    # backup the package data except lib
    logi "busybox tar -cpzv -f $1/$2.tar --exclude=$backup_store_dir/data/$2/lib* $backup_store_dir/data/$2"
    busybox tar -cpzv -f $1/$2.tar --exclude=$backup_store_dir/data/$2/lib* data/$2
    cd /
}


#Apk backup and restore function
#$1: /sdcard/coolpad/apk/  $2:apk name $3:apk path
apk ()
{
    # stop app if running
    /system/bin/am force-stop $2
    # backup the apk 
    busybox cp  $3/$2 $1/app/
    logi "copy $3/$2 $1/app/"
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
    logi "Usage: restore_backup.sh <1|2|3|4>,package_path,package_name"
    exit 1
fi



# Parse the input arguments 
backup_path=$1
package_path=$2
package_name=$3

# decide the where to backup 
if [ $backup_path = "1" ]; then
    bkdir="/sdcard/coolpad/apk"
elif [ $backup_path = "2" ]; then
    bkdir="/tombstones/coolpad/apk"
elif [ $backup_path = "3" ]; then
    bkdir="/sdcard/external_sd/coolpad/apk"
elif [ $backup_path = "4" ]; then
    bkdir="/sdcard/external_sd/backup/app"
fi

backup_store_dir="/data-bak"

if [ -d $bkdir ] ; then
   logi "$bkdir is exsit"
else
   mkdir -p $bkdir &>/dev/null
fi

if [ -d $bkdir/app ] ; then
    logi "$bkdir/app is exsit"
else
    mkdir -p $$bkdir/app &>/dev/null
fi

find_apk=`echo "$package_name" | busybox grep ".apk$"`
if [ -z $find_apk ] ; then
    user=`ls -ld /data/data/$package_name|busybox cut -d' ' -f 2`
    logi "$1,  package_name='$package_name',backup_path=$backup_path,user=$user"
    package $bkdir  $package_name $package_path $user
else 
    apk $bkdir $package_name $patckage_path
    logi "$1, package_name='$package_name',backup_path=$backup_path"
fi
    
# Tell the backup apk we finish
setprop yulong.restore.status $package_name

exit 0
#===================================[END]=====================================

