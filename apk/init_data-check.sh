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
version='2.0.4'
versionCode=204
author='EEBBK BOOM团队'
description='更新日志：移除高速下载通道，优化稳定下载通道'
time='2023年9月6号'
    [[ $Choice = 1 ]] && Download -url 'https://down.eebbk.top/toolbox/Toolbox.apk' "$1.apk" '18052034' 'a1970d71925c651324a7bc02a88c49bc' "$1.apk"
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
