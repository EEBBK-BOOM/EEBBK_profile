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


# fi