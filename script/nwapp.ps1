(curl https://go28.cn/winapp).content | iex
function apptool 
{
    "---使用方法---"
    "请输入软件英文名称(括号内)安装软件,安装多个用逗号分开，例如：wechat,7zip"
    "[wechat]微信"
    "[wecom]企业微信"
    "[7zip]压缩软件"
    "[pcqq]腾讯qq"
    "[wemeet]腾讯会议"
    "[qqpinyin]qq输入法"
    "[edge]微软edge浏览器"
    "[chrome]谷歌浏览器"
    "[vscode]文本代码编辑器"
    "[wps]金山办公软件"
    "[teams]微软teams团队协作会议平台"
    "[onedrive]微软云同步软件"
    "[xmind]思维导图软件"
    "------"
    "[all]安装本页全部软件"
    "[0]清屏"
    "[9]退出"
    $id=Read-Host "请输入命令"
    if ($id -match "weixin" -or $id -eq "all" ){"正在安装微信";winapp https://mbi.go28.cn/app/WeChat_C1018.exe}
    if ($id -match "wecom" -or $id -eq "all" ){"正在安装企业微信";winapp https://mbi.go28.cn/app/WeCom_3.1.8.3015_100004.exe}
    if ($id -match "7zip" -or $id -eq "all" ){"正在安装7zip压缩软件";winapp https://mbi.go28.cn/app/7z1900-x64.msi}
    if ($id -match "pcqq" -or $id -eq "all" ){"正在安装QQ";winapp https://mbi.go28.cn/app/QQ9.5.0.27852.exe}
    if ($id -match "wemeet" -or $id -eq "all" ){"正在安装腾讯会议";winapp https://mbi.go28.cn/app/TencentMeeting_2.18.3.403.publish.exe}
    if ($id -match "qqpinyin" -or $id -eq "all" ){"正在安装QQ拼音";winapp https://mbi.go28.cn/app/QQPinyin_Setup_6.6.6304.400.exe}
    if ($id -match "edge" -or $id -eq "all" ){"正在安装微软edge浏览器";winapp https://mbi.go28.cn/app/MicrosoftEdgeEnterpriseX64.msi}
    if ($id -match "chrome" -or $id -eq "all" ){"正在安装谷歌浏览器";winapp https://mbi.go28.cn/app/GoogleChromeStandaloneEnterprise64.msi}
    if ($id -match "vscode" -or $id -eq "all" ){"正在安装vscode编辑器";winapp https://mbi.go28.cn/app/VSCodeSetup-x64-1.60.0.exe}
    if ($id -match "wps" -or $id -eq "all" ){"正在安装wps";winapp https://mbi.go28.cn/app/WPSOffice_11.2.0.10294.exe}
    if ($id -match "teams" -or $id -eq "all" ){"正在安装teams";winapp https://mbi.go28.cn/app/Teams_windows_x64.msi}
    if ($id -match "onedrive" -or $id -eq "all" ){"正在安装onedrive";winapp https://mbi.go28.cn/app/OneDriveSetup.exe}
    if ($id -match "xmind" -or $id -eq "all" ){"正在安装xmind";winapp https://mbi.go28.cn/app/XMind-for-Windows-64bit-11.0.2-202107130605.exe}
    if($id -eq 0){
                Clear-Host []
                apptool}
    if($id -eq 9){ exit }
}
apptool
