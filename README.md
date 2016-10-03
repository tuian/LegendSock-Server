## 传奇梭客(服务端)
可以为你自动安装基于 ShadowsocksR 所修改的 LegendSock 服务端。

原版 ShadowsocksR 请查阅: https://github.com/breakwa11/shadowsocks/tree/manyuser

相应的 Shell Script 内容使用 lnmp.org 一键包进行改写，在此感谢两位作者的无私奉献。

## 注意事项
当前脚本*仅支持 CentOS 6.x 系统*，为确保脚本可正常运作、请勿在除 CentOS 6.x 以外的系统中使用。

若需要在其他环境安装、请从当前 Github 下载 `legendsock` 文件夹后，以 ShadowsocksR 相同的安装方式手动安装。

相应的后端安装成功后需要配合 LegendSock 才可实现自定义加密方式、混淆插件、协议插件等功能。

## 安装方法
在 Terminal 中执行如下命令:
```
wget -O /tmp/install.sh https://www.legendsock.com/box/server/install.txt;
chmod +x /tmp/install.sh;
/tmp/install.sh;
```
执行后按照提示输入相应的信息完成安装即可。

## 卸载方法
在 Terminal 中执行如下命令:
```
wget -O /tmp/uninstall.sh https://www.legendsock.com/box/server/uninstall.txt;
chmod +x /tmp/uninstall.sh;
/tmp/uninstall.sh;
```
执行后按照提示输入相应的信息完成安装即可。

## 使用方法
在 Terminal 中可选执行如下命令:
```
legendsock start     # 启动
legendsock stop      # 停止
legendsock restart   # 重启
legendsock status    # 状态
```
若使用相应的命令出现报错，请检查是否已成功安装 LegendSock 服务端。

## 关于软件
传奇梭客(LegendSock)是一款基于 WHMCS 所开发的扩展模块，可实现在 WHMCS 财务系统中在线自动开通、管理与统计相应的用量信息。

## 相关网址
官方网址: https://www.legendsock.com, 合作站点: https://neworld.org, 作者博客: https://www.zntec.cn

## 协议声明
Copyright &copy; 2016 Hostribe Technology Co., Ltd. All Rights Reserved. Code released under [the MIT license](https://github.com/babytomas/LegendSock-Server/blob/master/LICENSE).
