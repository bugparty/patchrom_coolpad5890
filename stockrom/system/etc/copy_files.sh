#!/system/xbin/sh
#
#Yulong copy image file from /system/image to /udisk
#
#



#================================================
copy_image()
{
    FILE=/sdcard/.image
    ret=1
    chk_cnt=0

    echo "waitting for sdcard ready ..."
    sleep 60
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
     {
         echo "check sdcard sucessful !"

         image=`busybox grep 'image' $FILE`
         
         
         if [ "$image" != "image" ] ; then
         {
             sleep 30
             busybox tar -jx -f system/files/files.tar.gz -C /sdcard/
             
             echo "image" >> $FILE
             echo "copy files sucessful !"
             exit 0
         }
         else
         {
             echo "had copied files to sdcard !"
             exit 0
         }
         fi
         
     }
     else
     {
         echo "check sdcard failure !"
         exit 1
     }
     fi

}

#==================================================

copy_image

#==================================================


