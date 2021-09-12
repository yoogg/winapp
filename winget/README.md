>
<!--more-->

#使用教程
```
powershell
 (curl https://go28.cn/winget).content | iex
```

### 1.使用微软应用商店安装
[微软商店地址][5]
如果无法使用，请在**设置->更新和安全->开发者选项** 打开第一个选项即可。
### 2.使用GitHub下载安装包
https://github.com/microsoft/winget-cli/releases
下载`.msixbundle`结尾的文件，双击运行即可
![53825-o90vsq7dxsr.png](https://lykqq.com/usr/uploads/2021/09/958603142.png)
由于github下载可能比较慢，<a href="https://d.go28.cn/3966850/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" download="winget.msixbundle">点击从网盘备份下载</a>(注意下载完去掉`.it`后缀)
### 3.使用命令下载一键安装
```
powershell
 (curl https://go28.cn/winget).content | iex
```
输入`winget`出现以下命令说明安装成功
![80144-2wb8tixh9uv.png](https://lykqq.com/usr/uploads/2021/09/370513480.png)
### 自定义设置winget
可以通过修改 settings.json 文件配置 winget 命令行体验 。 有关详细信息，请参阅 https://aka.ms/winget-settings 请注意，这些设置仍处于试验状态，并且尚未针对工具的预览版本最后确定。
# winget使用教程
[winget][6]工具的[install][7]命令可安装指定的应用程序。 使用[search][8]命令找到要安装的应用程序。
例如，安装压缩软件7zip（-h为静默方式安装，[详见文档][9]）
```
winget install 7zip -h
```
安装多个软件只用在记事本换行编辑命令，结尾多复制一行在Windows终端powershell运行即可，例如
```
winget install 7zip -h
winget install wechat -h
#安装完成
```
>当然也支持批量导出[export][10]和导入[import][11]，适合换电脑或重装系统一键部署
### winget批量导出已安装软件列表
`winget export -o '保存的文件路径'`
例如备份到桌面
```
$desktop=[Environment]::GetFolderPath("Desktop")
cd $desktop
winget export -o app.json

```
### winget批量安装软件
winget import -i '备份的文件路径'
例如从桌面app.json安装的软件(已经安装的会检测更新，没有更新会跳过)
```
$desktop=[Environment]::GetFolderPath("Desktop")
cd $desktop
winget import -i app.json

```
### winget升级软件
winget [upgrade][12] 软件名或id
升级所有软件命令
```
winget upgrade --all
```

### winget其他命令
winget 工具的当前预览版支持以下命令。
| 命令                                                         | 描述                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| [export](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/export) | 导出已安装包的列表。                                         |
| [features](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/features) | 显示试验功能的状态。                                         |
| [hash](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/hash) | 为安装程序生成 SHA256 哈希。                                 |
| [import](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/import) | 将所有包安装到一个文件中。                                   |
| [install](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/install) | 安装指定的应用程序。                                         |
| [list](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/list) | 显示已安装的包。                                             |
| [search](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/search) | 搜索某个应用程序。                                           |
| [settings](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/settings) | 打开设置。                                                   |
| [show](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/show) | 显示指定应用程序的详细信息。                                 |
| [source](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/source) | 添加、删除和更新 **winget** 工具访问的 Windows 程序包管理器存储库。 |
| [validate](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/validate) | 验证要提交到 Windows 程序包管理器存储库的清单文件。          |
| [uninstall](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/uninstall) | 卸载给定的包。                                               |
| [upgrade](https://docs.microsoft.com/zh-cn/windows/package-manager/winget/upgrade) | 升级给定的包。                                               |
官方文档：https://docs.microsoft.com/zh-cn/windows/package-manager/winget/


  [1]: https://lykqq.com/tool/Chocolatey.html
  [2]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/
  [3]: https://lykqq.com/down/283.html
  [4]: ms-windows-store://pdp/?productid=9nblggh4nns1
  [5]: https://www.microsoft.com/p/app-installer/9nblggh4nns1?ocid=9nblggh4nns1_ORSEARCH_Bing&rtc=1&activetab=pivot:overviewtab
  [6]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/
  [7]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/install
  [8]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/search
  [9]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/install#options
  [10]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/export
  [11]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/import
  [12]: https://docs.microsoft.com/zh-cn/windows/package-manager/winget/upgrade#example-queries
