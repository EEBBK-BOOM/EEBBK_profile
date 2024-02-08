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
version='27.0'
versionCode=27000
author='John Wu'
description='Magisk Manager'
time='2024年2月3号'
    [[ $Choice = 1 ]] && Download -boom 'Magisk-v27.0.apk' "$1.apk" '12498796' '4475064c5f6a5474e31f2f3dfafc22ed' "$1.apk"
;;

moe.shizuku.privileged.api)
apk='moe.shizuku.privileged.api'
name='Shizuku'
version='13.5.1.r1026.dceecf1'
versionCode=1026
author='Rikka'
description='系统API授权'
time='2023年8月12号'
    [[ $Choice = 1 ]] && Download -boom 'shizuku-v13.5.1.r1026.apk' "$1.apk" '3431990' '8d32609098886b34befc573e6917bba5' "$1.apk"
;;

com.modosa.apkinstaller)
apk='com.modosa.apkinstaller'
name='安装狮'
version='3.7.5'
versionCode=42
author='dadaewq'
description='安装第三方软件'
time='2020年7月7号'
    [[ $Choice = 1 ]] && Download -boom 'apkinstaller.apk' "$1.apk" '2931517' '665dfcc366eb8a6c42fb442c39fcc388' "$1.apk"
;;

com.yxer.packageinstalles)
apk='com.yxer.packageinstalles'
name='R-安装组件'
version='2.6.9-beta'
versionCode=332
author='L'
description='安装第三方软件'
time='2023年7月1号'
    if [[ $Choice = 1 ]]; then
        [[ $SDK -lt 27 ]] && abort "！$name-$version（$versionCode）不支持安卓8.1.0以下系统"
    fi
    [[ $Choice = 1 ]] && Download -boom 'R-packageinstalles_v2.6.9-beta(332).apk' "$1.apk" '2925927' '5d1b66270867d4381c4461c2b31a9799' "$1.apk"
;;

com.aistra.hail)
apk='com.aistra.hail'
name='雹'
version='1.4.0'
versionCode=27
author='艾星Aistra'
description='冻结软件'
time='2023年7月13号'
    [[ $Choice = 1 ]] && Download -boom 'hail_1.4.0(27).apk' "$1.apk" '2812646' 'c2549abfaf0f685e67fe6b6a9766bc5c' "$1.apk"
;;

me.zhanghai.android.files)
apk='me.zhanghai.android.files'
name='质感文件'
version='1.6.0'
versionCode=32
author='张海'
description='管理Android设备文件'
time='2022年5月16号'
    [[ $Choice = 1 ]] && Download -boom 'files_1.6.0(32).apk' "$1.apk" '13202575' '469d8bf49b417b415fd76b9bc82fd4a8' "$1.apk"
;;

com.x7890.shortcutcreator)
apk='com.x7890.shortcutcreator'
name='创建快捷方式'
version='1.17'
versionCode=117
author='x7890'
description='快捷打开系统隐藏的活动/系统设置选项'
time='2019年2月2号'
    [[ $Choice = 1 ]] && Download -boom 'shortcutcreator.apk' "$1.apk" '1329110' '91603438038865745cfd3301debca1d3' "$1.apk"
;;

mark.via)
apk='mark.via'
name='Via'
version='4.9.1'
versionCode=20230902
author='various'
description='浏览器'
time='2023年9月2号'
    [[ $Choice = 1 ]] && Download -boom 'Via_4.9.1(20230902).apk' "$1.apk" '1783699' '7c9d0080931ec8ca637a70558a5b5f20' "$1.apk"
;;

com.mmbox.xbrowser)
apk='com.mmbox.xbrowser'
name='X浏览器'
version='4.1.3'
versionCode=761
author='chengkai'
description='浏览器'
time='2023年8月29号'
    [[ $Choice = 1 ]] && Download -boom 'xbrowser_4.1.3(761).apk' "$1.apk" '1141036' '0bb45384a60662391ca31ece3ae187ec' "$1.apk"
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
