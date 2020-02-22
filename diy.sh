#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/tty228/luci-app-serverchan.git  package/openwrt/serverchan
mv package/lean/luci-theme-netgear/ package/openwrt/
mv package/lean/luci-theme-argon/ package/openwrt/
