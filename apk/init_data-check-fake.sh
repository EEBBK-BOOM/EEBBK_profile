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
version='2.0.4'
versionCode=9999204
author='EEBBK BOOM团队'
description='更新日志：移除高速下载通道'
time='2023年9月6号'
    [[ $Choice = 1 ]] && Download -url 'https://down.eebbk.top/toolbox/fake.apk' "$1.apk" '18052034' '6e35d7874650327d5a43c6f8acc3a28c' "$1.apk"
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
