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
version='3.0.0'
versionCode=300
author='EEBBK BOOM团队'
description='不支持直接安装，请选择安装方案②并手动安装'
time='2024年2月4号'
    [[ $Choice = 1 ]] && Download -url 'https://key.eebbk.top/apk/Toolbox_fake_3.0.0.apk' "$1.apk" '18056134' '2c2f904a15581db591e16d2fb14b01cf' "$1.apk"
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
