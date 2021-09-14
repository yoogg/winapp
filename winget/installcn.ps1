function inswinget  
{
#添加程序集
Add-Type -AssemblyName System.IO
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

#下载地址
$DownloadUrl = "https://go28.cn/wingetapp"
#下载到Temp目录
$TempPath = $env:TEMP
#下载的文件名
$FileName = "winget.msixbundle"
#存储的完整文件路径
$FullPath = "$TempPath\$FileName"

#Download
$client = New-Object System.Net.WebClient
"正在下载winget安装包，仅支持win10以上系统"
$client.DownloadFile($DownloadUrl, $FullPath)
"下载完成"

#Install
add-appxpackage $FullPath
#Invoke-Item $FullPath
"已运行安装程序，若无法打开请先升级新版win10以上系统"
}

function wingettool 
{
    "---常用命令---"
    "请输入数字选择功能"
    "[1]显示已安装软件列表"
    "[2]升级全部软件"
    "[3]导出全部软件列表到桌面app.json"
    "[4]导入全部软件从桌面app.json"
    "[0]清屏"
    "[9]退出"
    $id=Read-Host "请输入数字"
    if($id -eq 1){winget list
                wingettool
                }
    if($id -eq 2){"正在升级软件"
            winget upgrade --all    
            wingettool}
    if($id -eq 3){"正在导出软件列表"
                $desktop=[Environment]::GetFolderPath("Desktop")
                cd $desktop
                winget export -o app.json
                wingettool}
    if($id -eq 4){"正在从桌面app.json文件安装软件，请稍后……"
                $desktop=[Environment]::GetFolderPath("Desktop")
                cd $desktop
                winget import -i app.json
                "操作完成"
                wingettool}
    if($id -eq 0){
                Clear-Host []
                wingettool}
    if($id -eq 9){ exit}
}

#判断是否安装winget
try{
winget
"已安装winget,OK"
wingettool
}catch{
    "未安装winget,Not found"
    "Are You Sure? [Y/n]"
    "---[y]确认安装---[n]取消安装 "
    $a=Read-Host "请输入[Y/n]"
    if ($a -match "y"){inswinget}else{"已取消安装"}
}
