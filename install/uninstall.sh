#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 检查当前用户是否 root
if [ $(id -u) != "0" ]; then
  echo "Error: You must be root to run this script";
  exit 1;
fi

# 检查是否已安装
if [ ! -d "/usr/local/legendsock" ]; then
  echo "LegendSock is not installed, please check it";
  exit 1;
fi

# 检查是否 CentOS
if [ "`cat /etc/redhat-release 2>/dev/null| cut -d\  -f1`" != "CentOS" ]; then
  echo "Error: The current system is not CentOS";
  exit 1;
fi

# 输出带颜色的文字
Color_Text()
{
  echo -e " \e[0;$2m$1\e[0m";
}
Echo_Blue()
{
  echo $(Color_Text "$1" "34");
}

clear
echo "+--------------------------------------------------------------------+";
echo "|                    LegendSock server for CentOS                    |";
echo "+--------------------------------------------------------------------+";
echo "|   For more information please visit https://www.legendsock.com     |";
echo "+--------------------------------------------------------------------+";
echo "|                     `Echo_Blue "Press any key to uninstall"`                     |";
echo "+--------------------------------------------------------------------+";
OLDCONFIG=`stty -g`;
stty -icanon -echo min 1 time 0;
dd count=1 2>/dev/null;
stty ${OLDCONFIG};
clear

echo "Remove the legendsock file and directory...";
rm -rf /usr/local/legendsock /usr/bin/legendsock
echo "Remove the boot entry...";
sed -i "s#"/usr/local/legendsock/start.sh"#""#g" /etc/rc.local;

clear
Echo_Blue "LegendSock has been removed.";
echo "";
Echo_Blue "Website: https://www.legendsock.com";

# 删除自身
rm -rf $0;
