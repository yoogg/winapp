#下载文件
function Download($url, $targetFile)
{
   $uri = New-Object "System.Uri" "$url"
   $request = [System.Net.HttpWebRequest]::Create($uri)
   $request.set_Timeout(15000) #15 second timeout
   $response = $request.GetResponse()
   $totalLength = [System.Math]::Floor($response.get_ContentLength()/1024)
   if ($totalLength -le 1024){
       $client = new-object System.Net.WebClient
       $client.DownloadFile($uri, $targetFile)}
    else{
   $responseStream = $response.GetResponseStream()
   $targetStream = New-Object -TypeName System.IO.FileStream -ArgumentList $targetFile, Create
   $buffer = new-object byte[] 1024KB
   $count = $responseStream.Read($buffer,0,$buffer.length)
   $downloadedBytes = $count
   while ($count -gt 0)
   {   $targetStream.Write($buffer, 0, $count)
       $count = $responseStream.Read($buffer,0,$buffer.length)
       $downloadedBytes = $downloadedBytes + $count
       Write-Progress -activity "正在下载文件 '$($url.split('/') | Select -Last 1)'" -status "下载中…… ($([System.Math]::Floor($downloadedBytes/1024))K of $($totalLength)K): " -PercentComplete ((([System.Math]::Floor($downloadedBytes/1024)) / $totalLength)  * 100)
   }
   Write-Progress -activity "已下载文件 '$($url.split('/') | Select -Last 1)'"
   $targetStream.Flush()
   $targetStream.Close()
   $targetStream.Dispose()
   $responseStream.Dispose()
}}
#安装软件
function winapp([String]$Uri)  
{
#添加程序集
Add-Type -AssemblyName System.IO
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

#下载地址
$DownloadUrl = $Uri
#下载到Temp目录
$TempPath = $env:TEMP
#下载的文件名
$FileName = $Uri.split("/")[-1]
#下载的文件后缀名
$a = $Uri.split(".")[-1]
#存储的完整文件路径
$FullPath = "$TempPath\$FileName"

#Download
try{Download $DownloadUrl $FullPath
"下载完成"
#Install
if ($a -eq "exe"){
    cmd.exe /c $FullPath /S /v /qn
    "已运行安装程序"+$FileName
}
if ($a -eq "msi"){cmd.exe /c msiexec.exe /i $FullPath /passive
"已运行安装程序"+$FileName }
if ($a -eq "msixbundle"){add-appxpackage $FullPath
"已运行安装程序"+$FileName }
Remove-Item $FullPath
"安装完成，已清理安装包"
}
catch{"下载失败，请检查网络或url是否能正常访问"}
}
"使用说明：winapp 软件包下载地址，例如："
"winapp https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe"
