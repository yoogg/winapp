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
    if ($id -match "wechat" -or $id -eq "all" ){"正在安装微信";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/WeChatSetup.exe}
    if ($id -match "wecom" -or $id -eq "all" ){"正在安装企业微信";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/WeCom.exe}
    if ($id -match "7zip" -or $id -eq "all" ){"正在安装7zip压缩软件";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/7z2106-x64.exe}
    if ($id -match "pcqq" -or $id -eq "all" ){"正在安装QQ";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/PCQQ.exe}
    if ($id -match "wemeet" -or $id -eq "all" ){"正在安装腾讯会议";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/TencentMeeting.exe}
    if ($id -match "qqpinyin" -or $id -eq "all" ){"正在安装QQ拼音";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/QQPinyin.exe}
    if ($id -match "edge" -or $id -eq "all" ){"正在安装微软edge浏览器";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/MicrosoftEdgeEnterpriseX64.msi}
    if ($id -match "chrome" -or $id -eq "all" ){"正在安装谷歌浏览器";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/ChromeStandaloneSetup64.exe}
    if ($id -match "vscode" -or $id -eq "all" ){"正在安装vscode编辑器";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/VSCodeSetup-x64.exe}
    if ($id -match "wps" -or $id -eq "all" ){"正在安装wps";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/WPS_2052_11.8.2.8361.exe}
    if ($id -match "teams" -or $id -eq "all" ){"正在安装teams";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/Teams_windows_x64.exe}
    if ($id -match "onedrive" -or $id -eq "all" ){"正在安装onedrive";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/OneDriveSetup.exe}
    if ($id -match "xmind" -or $id -eq "all" ){"正在安装xmind";winapp http://nw.hadeliang.cn/chfs/shared/PC/APP/XMind-ZEN-Update-2019-for-Windows-64bit-9.2.0-201904271935.exe}
    if($id -eq 0){
                Clear-Host []
                apptool}
    if($id -eq 9){ exit }
}
apptool
