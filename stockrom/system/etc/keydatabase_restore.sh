#!/system/bin/sh
# backup or restore keydatabases .
# by heping at 2012.12.26
#        0: backup, 1: restore
#        bak pkg_name:com.android.providers.telephony/databases/telephony.db
#        bak pkg_name:com.android.providers.telephony/databases/mmssms.db
#        bak pkg_name:com.android.providers.contacts/databases/contacts2.db
#        bak pkg_name:com.android.providers.contacts/databases/profile.db
#  Output:     
#        yulong.apkbackup.status
#        start/error/finish
#=================================[START]===================================== 

LOG_TAG="YLLOG:COPY_APK_PRVDATA "

# the log function 
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
  #/system/bin/log -t $LOG_TAG -p i "$@"
}

logi "args: [$*]"
# if the arguments are wrong
if [ -z $1 ]
then
    logi "Usage: keydatabase_restore.sh <0|1>,pkg_name"
    exit 1
fi

# setprop yulong.apkbackup.status start

# parse the input arguments 
store=${1:0:1}

pkg_name=${1:2}

logi "$1, store=$store, pkg_name='$pkg_name'"

# check the package exist
if [ ! -d "/data/data/$pkg_name" ]; then
    logi "'/data/data/$pkg_name' doesn't exist!"
    setprop yulong.apkbackup.status error
    exit 1
fi

# decide the where to backup 
bkdir="/data/data/dbbak"

mkdir -p $bkdir &>/dev/null

# stop app if running
/system/bin/am force-stop $pkg_name

# get the user name of the app(package)
user=`ls -ld /data/data/$pkg_name|busybox cut -d' ' -f 2`
logi "The user of $pkg_name is $user"

# backup
# cd /data/data/$pkg_name
if [ $store = "0" ]; then
    # file sync
    busybox usleep 100000
    # sync every database file
    ls -a /data/data/$pkg_name/databases | while read file
    do
        busybox fsync /data/data/$pkg_name/databases/${file} 
        logi "busybox fsync /data/data/$pkg_name/databases/${file}"         
    done
    busybox usleep 100000
    sync
    # backup the databases   
    busybox tar -czv -f $bkdir/$pkg_name.tar  /data/data/$pkg_name/databases
    
elif [ -s "$bkdir/$pkg_name.tar" ]; then

    logi "busybox tar -xzvf $bkdir/$pkg_name.tar -C /"
    busybox tar -xzvf $bkdir/$pkg_name.tar -C /
    # chown every file if need
    chown $user:$user /data/data/$pkg_name/databases
    ls -a /data/data/$pkg_name/databases | while read file1
    do        
       chown $user:$user /data/data/$pkg_name/databases/${file1}
    done
fi

# tell the backup apk we finish
# setprop yulong.apkbackup.status finish

exit 0
#===================================[END]=====================================