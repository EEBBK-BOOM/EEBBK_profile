Configuration=2022012700
Magisk_Warehouse_version=2021101100
App_Store_version=2021100100
Show_Compatibility_Mode=1
MIUI=0


case "$1" in

#应用
com.ycly.EEBBK.toolbox)
apk='com.ycly.EEBBK.toolbox'
name='EEBBK Toolbox'
version='2.0.2'
versionCode=202
author='EEBBK BOOM'
description='更新日志：更换下载通道'
time='2023年5月28号'
    [[ $Choice = 1 ]] && Download -url 'https://kgithub.com/EEBBK-BOOM/EEBBK_profile/releases/download/Toolbox/Toolbox_2.0.2.apk' "$1.apk" '16545099' '8befc98c310febf9521e482492a68d05' "$1.apk"
;;

exit_sideload)
    Download_File="$PeiZhi_File/$1.zip"
;;

Card_Brush_Bag)
    Download_File="$PeiZhi_File/Card_Brush_Bag/$3.zip"
;;

Install_Applet)
    name=Applet
    versionCode=73
    Download_File=$Other/$name.zip
    Install_Applet2
;;

*)
    abort "！未找到$1服务"
;;
esac
true
