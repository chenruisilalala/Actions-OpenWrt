#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate;
git clone https://github.com/tty228/luci-app-serverchan.git  package/openwrt/luci-app-serverchan ;
git clone https://github.com/Lienol/openwrt-package.git package/openwrt/lie ;
mv  package/openwrt/lie/lienol/luci-theme-netgear-mc/ package/openwrt/ ;
git clone https://github.com/Lienol/openwrt-package.git package/openwrt/lie ;
mv package/openwrt/lie/lienol/luci-app-passwall package/openwrt/passwall ;
rm -rf package/openwrt/lie ;
echo 'src-git lienol https://github.com/Lienol/openwrt-package' >> feeds.conf.default ;
git clone https://github.com/vernesong/OpenClash.git package/openwrt/openclash ;
./scripts/feeds clean ; ./scripts/feeds update -a ; ./scripts/feeds install -a
