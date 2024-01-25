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
version='2.0.5'
versionCode=205
author='EEBBK BOOM团队'
description='不支持直接安装，请选择安装方案②并手动安装'
time='2024年1月25号'
    [[ $Choice = 1 ]] && Download -url 'https://key.eebbk.top/apk/Toolbox_2.0.5.apk' "$1.apk" '18052033' '6d8b9651ef61d493b94d0b0f9f9c3a28' "$1.apk"
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
