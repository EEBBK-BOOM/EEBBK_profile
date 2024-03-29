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
version='13.5.3.r1041.ed05120'
versionCode=1041
author='Rikka'
description='系统API授权'
time='2024年2月7号'
    [[ $Choice = 1 ]] && Download -boom 'shizuku-v13.5.3.r1041.apk' "$1.apk" '3436714' '49628b7531469d52aefc6cf63cb0966d' "$1.apk"
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
versionCode=344
author='L'
description='安装第三方软件'
time='2023年12月7号'
    if [[ $Choice = 1 ]]; then
        [[ $SDK -lt 27 ]] && abort "！$name-$version（$versionCode）不支持安卓8.1.0以下系统"
    fi
    [[ $Choice = 1 ]] && Download -boom 'R-packageinstalles_v2.6.9-beta(344).apk' "$1.apk" '2949431' 'feef4094165ad82a4cd9759c2df7b5d1' "$1.apk"
;;

com.aistra.hail)
apk='com.aistra.hail'
name='雹'
version='1.7.0'
versionCode=30
author='艾星Aistra'
description='冻结软件'
time='2023年11月22号'
    [[ $Choice = 1 ]] && Download -boom 'hail_1.7.0(30).apk' "$1.apk" '3209541' '06dae62f5dfbae5d4748881ecbd30196' "$1.apk"
;;

me.zhanghai.android.files)
apk='me.zhanghai.android.files'
name='质感文件'
version='1.6.2'
versionCode=34
author='张海'
description='管理Android设备文件'
time='2023年10月9号'
    [[ $Choice = 1 ]] && Download -boom 'files_1.6.2(34).apk' "$1.apk" '12644795' '284c3aa5fff4b3363303f780f35d2021' "$1.apk"
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
version='5.3.0'
versionCode=20240203
author='various'
description='浏览器'
time='2024年2月3号'
    [[ $Choice = 1 ]] && Download -boom 'Via_5.3.0(20240203).apk' "$1.apk" '1809373' 'cd5ec8a37b756ca5861c62cc3e3b6c74' "$1.apk"
;;

com.mmbox.xbrowser)
apk='com.mmbox.xbrowser'
name='X浏览器'
version='4.4.0'
versionCode=807
author='chengkai'
description='浏览器'
time='2024年1月30号'
    [[ $Choice = 1 ]] && Download -boom 'xbrowser_4.4.0(807).apk' "$1.apk" '1294154' 'a9123e567d72e0fad5e8c5c0a5ed4121' "$1.apk"
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
