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
version='25.2'
versionCode='25200'
author='John Wu'
description='Magisk Manager'
time='2022年7月20号'
    [[ $Choice = 1 ]] && Download -gh 'Magisk-25.2.apk' "$1.apk" '11278270' '278576ca7483716bcbc16af7cff268bd' "$1.apk"
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
version='2.6.2-beta'
versionCode=286
author='L'
description='安装第三方软件'
time='2023年1月28号'
    if [[ $Choice = 1 ]]; then
        [[ $SDK -lt 27 ]] && abort "！$name-$version（$versionCode）不支持安卓8.1.0以下系统"
    fi
    Download -gh 'r-packageinstalles.apk' "$1.apk" '1647631' 'e6df20581cec49d20c4d799e904fdd5e' "$1.apk"
;;

com.aistra.hail)
apk='com.aistra.hail'
name='雹'
version='1.2.1'
versionCode='24'
author='艾星Aistra'
description='冻结软件'
time='2023年3月1号'
    [[ $Choice = 1 ]] && Download -gh 'hail.apk' "$1.apk" '2621492' '1434387f44f926514227603c2e01cd9e' "$1.apk"
;;

me.zhanghai.android.files)
apk='me.zhanghai.android.files'
name='质感文件'
version='1.5.2'
versionCode=31
author='张海'
description='管理Android设备文件'
time='2022年5月16号'
    [[ $Choice = 1 ]] && Download -gh 'file.apk' "$1.apk" '8525057' '0060ab65dfaa426977715e42aada1cc7' "$1.apk"
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

com.mmbox.xbrowser)
apk='com.mmbox.xbrowser'
name='X浏览器'
version='4.0.0'
versionCode=698
author='chengkai'
description='浏览器'
time='2023年2月24号'
    [[ $Choice = 1 ]] && Download -gh 'xbrowser.apk' "$1.apk" '1119067' '3b83fb63b003c3ac963d7845a999f536' "$1.apk"
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
