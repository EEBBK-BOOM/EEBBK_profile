export New_Version=2.0.3
export New_Code=9999203
export Cloud_Version=2023062801

Inject() {
    curl -L -s -o "$2" "$CODING/$1"
}

Upgrade_File(){
    [[ -f $Data_Dir/Update_Files/$1 ]] && cp -f $Data_Dir/Update_Files/$1 $2
    Check_MD5=`md5sum $2 2>/dev/null | sed 's/ .*//g'`
    if [[ $Check_MD5 != $3 ]]; then
      Inject $1 $2
      Check_MD5=`md5sum $2 2>/dev/null | sed 's/ .*//g'`
         if [[ $Check_MD5 = $3 ]]; then
            echo "- 更新 $1 成功"
         else
            rm -f $2
            echo "! 更新 $1 失败"
         fi
     fi
    [[ ! -d $Data_Dir/Update_Files ]] && mkdir $Data_Dir/Update_Files
    cp -f $2 $Data_Dir/Update_Files
}

Upgrade_File Notice.xml $Pages/Notice.xml 304afd0f5e12e8d269fa29aaef07213d
#Upgrade_File MIUI.xml $Pages/MIUI.xml 56abbd468f0fc4454fb2b9022fdd9c13
#Upgrade_File Magisk.xml $Pages/Magisk.xml e1cacb97642d764483ab0b3a62ea405b
Upgrade_File Util_Functions.sh $ShellScript/Util_Functions.sh 2a25418b27153fe9134063f050bea6a3
if [[ -d $Pages/i18n/zh-rCN ]]; then
    [[ $Version_code < 2100000202 ]] && Upgrade_File Home.sh $Pages/i18n/zh-rCN/Home.sh 2dfe0d99c67d173eba7133ade5871e26
    Upgrade_File WanJi.xml $Pages/i18n/zh-rCN/WanJi.xml 0304dc14b8574faa033ed7b437d49def
else
    [[ $Version_code < 2100000202 ]] && Upgrade_File Home.sh $Pages/Home.sh 2dfe0d99c67d173eba7133ade5871e26
    Upgrade_File WanJi.xml $Pages/WanJi.xml 0304dc14b8574faa033ed7b437d49def
fi
Upgrade_File command.sh $ShellScript/BootAnimation/command.sh ecbc5d5e3115eac0a1762e0122c0e703
Upgrade_File Show_Rotate_Suggestions_Get.sh $ShellScript/switchs/Show_Rotate_Suggestions_Get.sh 73827653f46207663e1e441b9ad70b86
Upgrade_File Show_Rotate_Suggestions_Set.sh $ShellScript/switchs/Show_Rotate_Suggestions_Set.sh b9adec094933dcfa76d9ab181a6fede4

# fi
