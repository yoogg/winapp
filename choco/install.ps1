#安装chocolatey函数
function installchoco  
{  
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}
#升级chocolatey函数
function updatechoco  
{ 
choco upgrade chocolatey
}
#判断是否安装chocolatey
try{
updatechoco
"已安装Chocolatey,OK"
}catch{
    "未安装Chocolatey,Not found"
    installchoco
}
