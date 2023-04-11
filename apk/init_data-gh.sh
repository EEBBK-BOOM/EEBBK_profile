Configuration=2022012700
Magisk_Warehouse_version=2021101100
App_Store_version=2021100100
Show_Compatibility_Mode=1
MIUI=0


case "$1" in

#应用
com.topjohnwu.magisk)
apk='com.topjohnwu.magisk'
name='Magisk'
version='26.1'
versionCode=26100
author='John Wu'
description='Magisk Manager'
time='2023年4月11号'
    [[ $Choice = 1 ]] && Download -gh 'Magisk-26.1.apk' "$1.apk" '11399404' '6794a570b8ebfbaa5f596eda3639ef56' "$1.apk"
;;

moe.shizuku.privileged.api)
apk='moe.shizuku.privileged.api'
name='Shizuku'
version='13.2.1.r989.b053ea2'
versionCode=989
author='Rikka'
description='系统API授权'
time='2023年4月3号'
    [[ $Choice = 1 ]] && Download -gh 'shizuku-v13.2.1.r989.apk' "$1.apk" '3413976' '980274e0c5e5cebacad4602bd5d5dab7' "$1.apk"
;;

com.modosa.apkinstaller)
apk='com.modosa.apkinstaller'
name='安装狮'
version='3.7.5'
versionCode=42
author='dadaewq'
description='安装第三方软件'
time='2020年7月7号'
    [[ $Choice = 1 ]] && Download -gh 'apkinstaller.apk' "$1.apk" '1869340' '665dfcc366eb8a6c42fb442c39fcc388' "$1.apk"
;;

com.yxer.packageinstalles)
apk='com.yxer.packageinstalles'
name='R-安装组件'
version='2.6.9-beta'
versionCode=297
author='L'
description='安装第三方软件'
time='2023年4月2号'
    if [[ $Choice = 1 ]]; then
        [[ $SDK -lt 27 ]] && abort "！$name-$version（$versionCode）不支持安卓8.1.0以下系统"
    fi
    [[ $Choice = 1 ]] && Download -gh 'r-packageinstalles_v2.6.9-beta(297).apk' "$1.apk" '2828176' '0714af66b7c6569a04dd321a653b5baf' "$1.apk"
;;

com.aistra.hail)
apk='com.aistra.hail'
name='雹'
version='1.2.2'
versionCode=25
author='艾星Aistra'
description='冻结软件'
time='2023年3月17号'
    [[ $Choice = 1 ]] && Download -gh 'hail_1.2.2(25).apk' "$1.apk" '2823166' '751668d429b2224545bcec89b349d951' "$1.apk"
;;

me.zhanghai.android.files)
apk='me.zhanghai.android.files'
name='质感文件'
version='1.5.2'
versionCode=31
author='张海'
description='管理Android设备文件'
time='2022年5月16号'
    [[ $Choice = 1 ]] && Download -gh 'files.apk' "$1.apk" '8525057' '0060ab65dfaa426977715e42aada1cc7' "$1.apk"
;;

com.x7890.shortcutcreator)
apk='com.x7890.shortcutcreator'
name='创建快捷方式'
version='1.17'
versionCode=117
author='x7890'
description='快捷打开系统隐藏的活动/系统设置选项'
time='2019年2月2号'
    [[ $Choice = 1 ]] && Download -gh 'shortcutcreator.apk' "$1.apk" '1329110' '91603438038865745cfd3301debca1d3' "$1.apk"
;;

mark.via)
apk='mark.via'
name='Via'
version='4.5.1'
versionCode=20230222
author='various'
description='浏览器'
time='2023年2月22号'
    [[ $Choice = 1 ]] && Download -gh 'Via_4.5.1(20230222).apk' "$1.apk" '1580588' '62293ff2eb7b18c575d181e11fe0b395' "$1.apk"
;;

com.mmbox.xbrowser)
apk='com.mmbox.xbrowser'
name='X浏览器'
version='4.0.1'
versionCode=713
author='chengkai'
description='浏览器'
time='2023年4月1号'
    [[ $Choice = 1 ]] && Download -gh 'xbrowser_4.0.1(713).apk' "$1.apk" '1151646' '48a59e177af49f4e700568cf94edbb69' "$1.apk"
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
