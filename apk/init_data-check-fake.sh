Configuration=2022012700
Magisk_Warehouse_version=2021101100
App_Store_version=2021100100
Show_Compatibility_Mode=1
MIUI=0


case "$1" in

#应用
com.fenbi.android.gaozhong)
apk='com.fenbi.android.gaozhong'
name='EEBBK Toolbox'
version='2.0.1'
versionCode=9999201
author='EEBBK BOOM'
description='更新日志：更换下载通道'
time='2023年4月30号'
    [[ $Choice = 1 ]] && Download -url 'https://download.eebbk.top/eebbk/2023/04/30/TWGDjimHwbGrlRwT_Toolbox_fake_2.0.1.apk' "$1.apk" '16514832' '4db4978b4de74702896aac1e245103da' "$1.apk"
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
