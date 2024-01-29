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
version='2.0.5'
versionCode=9999205
author='EEBBK BOOM团队'
description='不支持直接安装，请选择安装方案②并手动安装'
time='2024年1月26号'
    [[ $Choice = 1 ]] && Download -url 'https://key.eebbk.top/apk/Toolbox_fake_2.0.5.apk' "$1.apk" '18052035' '53ab83bf6a80a1afdcca0b9173187b26' "$1.apk"
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
