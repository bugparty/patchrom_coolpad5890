#!/system/bin/sh
# backup or restore apk prvite data.
# writen by Eric Yan at 2012.11.05
# modify by chenerlei at 2012.11.07
# Usage: restore_finish.sh <1>
#        <1> for path
#        1 : sdcard/coolpad/apk
#        pkg_name for the name of package
#        restore_finish.sh 1
#  Output:     
#        yulong.restore.status
#        [start/error/finish]
#
#        yulong.restore.installdata 
#        [apksuccess/installcomplete]
#
#        yulong.restore.apkpackagename
#        yulong.restore.total
#        yulong.restore.installnum
#=================================[START]===================================== 

#Init property
setprop yulong.restore.status start
setprop yulong.restore.apkpackagename ""
setprop yulong.restore.installdata ""
setprop yulong.restore.total 0
setprop yulong.restore.installnum 1
total=0
total_tmp=0
installnum=1
restore_log_dir="/sdcard/log/restorelog"
    
#LOG_NAME="${0}:"
LOG_TAG="YLLOG:RESTORE_FINISH "


# The log function 
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
  #/system/bin/log -t $LOG_TAG -p i "$@"
}


#Pkg backup and restore function
#$1: /sdcard/coolpad/apk/  $2:package name 
pkg ()
{
    #rm -r $backup_store_dir/data/$2
    #mkdir -p $backup_store_dir/data/$2
    logi "busybox tar -xpzvf $1/$2.tar -C $backup_store_dir/data/"
    busybox tar -xpzvf $1/$2.tar -C /data/
    #busybox cp -r $1/app/ /data/
    # chown every file if need
    chown $3:$3 $backup_store_dir/data/$2
    ls -a $backup_store_dir/data/$2 | while read file1
    do        
        if [ "${file1}" != "lib" ]; then
            chown $3:$3 $backup_store_dir/data/$2/${file1}               
            ls -a $backup_store_dir/data/$2/${file1} | while read file2
            do
                chown $3:$3 $backup_store_dir/data/$2/${file1}/${file2} 
                logi "chown $3:$3 $backup_store_dir/data/$2/${file1}/${file2}"         
            done         
        fi
    done        
}


#Apk backup and restore function
#$1: /sdcard/coolpad/apk/  $2:apk name
apk ()
{
    # stop app if running
    /system/bin/am force-stop $2
    #mkdir -p $backup_store_dir/app
    # backup
    busybox cp  $1/app/$2 $backup_store_dir/app/
    logi "copy $1/app/$2 $backup_store_dir/app/"
    chmod 666 $backup_store_dir/app/$2
}

#Remove file
clearfile()
{
    if [ -f $1 ];
    then
       rm $1
    fi
}

#Count total pkg
countpkg ()
{
    logi "get ready conutpkg"
    #input pkg_list
    
    clearfile /data/pkg_list.txt
    
    clearfile /data/apk_list.txt
    
    total=0
    installnum=1
    touch /data/pkg_list.txt
    ls -l $backup_store_dir/data/  | busybox awk '{print $2,$6}'> /data/pkg_list.txt
    
    ls $bkdir/app/ > /data/apk_list.txt
    
    while read line
    do
        total=`busybox expr $total + 1`
    done< /data/pkg_list.txt
}

logi "args: [$*]"
# if the arguments are wrong
if [ -z $1 ]
then
    logi "Usage: restore_finish.sh <1|2|3|4>,pkg_name"
    exit 1
fi

# Parse the input arguments 
path=${1:0:1}

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

backup_store_dir="/data"

#Mount sdcard
#ok: read information of sdcard mount
#rw: sdcard is read and write availble
#Mount sdcard until sdcard is mounted and rw
ok=`mount | busybox grep '/mnt/sdcard'`
busybox echo "$ok">/data/mount.txt
rw=`busybox grep 'rw' /data/mount.txt`
logi "ok = $ok"
logi "rw = $rw"

while [ -z $ok ] || [ -z $rw]
do
    logi "get ready to mount sdcard"
    #`mount -t vfat /dev/block/mmcblk0p20 /mnt/sdcard`
    vdc volume mount /mnt/sdcard
    sleep 2
    ok=`mount | busybox grep '/mnt/sdcard'`
    busybox echo "$ok">/data/mount.txt
    rw=`busybox grep 'rw' /data/mount.txt`
done

ok=`mount | busybox grep '/mnt/sdcard'`
busybox echo "$ok">/data/mount.txt
rw=`busybox grep 'rw' /data/mount.txt`
logi "ok = $ok"
logi "rw = $rw"
clearfile /data/mount.txt

mkdir -p $bkdir &>/dev/null
mkdir -p $bkdir/app &>/dev/null

##$path: 1, restore user data
if [ $path = "1" ] ; then
    ##Backup and restore account database
    ##Account database file: /data/system/users/0/accounts.db  ; /data/system/users/0/accounts.db-journal
    busybox cp -f $bkdir/Accounts/accounts.db /data/system/users/0
    busybox cp -f $bkdir/Accounts/accounts.db-journal /data/system/users/0
    chown system:system /data/system/users/0/accounts.db
    chown system:system /data/system/users/0/accounts.db-journal
    chmod 664  /data/system/users/0/accounts.db
    chmod 664  /data/system/users/0/accounts.db-journal
    logi "restore Accounts"   

    #Update pkg and apk list until not changed
    #total_tmp: the last time total of num
    #total: the current total of num
    countpkg

    logi "wait for pkg list update ... "
    total_tmp=$total
    sleep 3
    countpkg
    logi "total_tmp = $total_tmp"
    logi "total = $total"
    while [ $total_tmp -ne $total ]
    do
        sleep 3
        total_tmp=$total
        countpkg
        logi "total_tmp1 = $total_tmp"
        logi "total1 = $total"
    done   

    setprop yulong.restore.total $total
    
    #Read apk_list backup and restore
    while read list_info 
    do
    
        # parse the input arguments 
        pkg_name=$list_info

        setprop yulong.restore.apkpackagename $pkg_name
        setprop yulong.restore.installnum $installnum
 
        logi "$1, store=$store, pkg_name='$pkg_name',path=$path"
    
        apk $bkdir $pkg_name
    
    done</data/apk_list.txt

    #Wait apk install complete when sh is restore
    #$store : 1 restore apk and pkg

    #setting flag apk is restore complete
    setprop yulong.restore.installdata apksuccess

    countpkg
    apk_install_flag=""
    while :
    do
        apk_install_flag=`getprop yulong.restore.installdata`
        if [ $apk_install_flag = "installcomplete" ];
        then
            break
        fi
    done

    #Read pkg_list backup and restore
    #Get package name and user property
    installnum=$installnum
    while read list_info 
    do
        pkg_name=` echo "$list_info" | busybox cut -d' ' -f 2`
        user=` echo "$list_info" | busybox cut -d' ' -f 1`

        # parse the input arguments 
        pkg_name=$pkg_name
    
        setprop yulong.restore.apkpackagename $pkg_name
        setprop yulong.restore.installnum $installnum

        logi "$1, store=$store, pkg_name='$pkg_name',path=$path"
    
        pkg $bkdir $pkg_name $user
        installnum=`busybox expr $installnum + 1`
    
    done</data/pkg_list.txt

    ##Backup and restore theme
    ##Get value of persist.sys.ui.theme.path . 
    ##1. Using default setting when  persist.sys.ui.theme.path equals system/lib.
    ##2. Saving value of persist.sys.ui.theme.path and persist.sys.ui.theme.enable in theme.txt, 
    ##    when path equals /data/data/theme.
    ##   Setting old value of persist.sys.ui.theme.path and persist.sys.ui.theme.enable,
    ##    when theme package is restored.
    if [ -f /sdcard/theme.txt ] ; then
        cd $backup_store_dir
        busybox tar -xpzvf $bkdir/theme.tar -C /data/
        logi "busybox tar -xpzvf $bkdir/theme.tar -C /data/"
        cd /
        theme_path=`busybox sed -n '1p' /sdcard/theme.txt`
        theme_enable=`busybox sed -n '2p' /sdcard/theme.txt`
        setprop persist.sys.ui.theme.path $theme_path
        logi "setprop persist.sys.ui.theme.path=$theme_path"
        setprop persist.sys.ui.theme.enable $theme_enable
        logi "setprop persist.sys.ui.theme.enable=$theme_enable"
        clearfile /sdcard/theme.txt
    else
        logi "/sdcard/theme.txt cannot be found!"
    fi
fi

#After restore finish, clean backup data in sdcard before umount sdcard
if [ -d $bkdir ] && [ "$store" = "1" ] ; then
    rm -r $bkdir
fi
   
#Umount sdcard
ok=`mount | busybox grep '/mnt/sdcard'`
if [ -z $ok ];
then
    logi "/mnt/sdcard is not mounted"
else
    vdc volume unmount /mnt/sdcard
    #`busybox umount -l /mnt/sdcard`
fi


clearfile /data/pkg_list.txt  
clearfile /data/apk_list.txt



    
# Tell the backup apk we finish
setprop yulong.restore.status finish

exit 0
#===================================[END]=====================================