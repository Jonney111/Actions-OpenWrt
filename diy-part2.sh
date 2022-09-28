#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP（FROM 192.168.1.1 CHANGE TO 192.168.5.1）
# sed -i 's/192.168.5.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings # 设置密码为空

# a dependency on 'luci-lib-ipkg', which does not exist
sed -i 's/luci-lib-ipkg/luci-base/g' package/feeds/kenzo/luci-app-bypass/Makefile


# Modify system hostname（FROM OpenWrt CHANGE TO OpenWrt-N1）
# sed -i 's/OpenWrt/OpenWrt-N1/g' package/base-files/files/bin/config_generate

# Replace the default software source
# sed -i 's#openwrt.proxy.ustclug.org#mirrors.bfsu.edu.cn\\/openwrt#' package/lean/default-settings/files/zzz-default-settings
# sed -i 's/invalid users = root/#invalid users = root/g' feeds/packages/net/samba4/files/smb.conf.template

# 拉取软件包
# 从openclash拉取luci-app-openclash包
# svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash 

# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
# svn co https://github.com/Jonney111/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
# svn co https://github.com/lisaac/luci-app-diskman/trunk/applications/luci-app-diskman package/luci-app-diskman
# svn co https://github.com/Jonney111/openwrt-packages/trunk/luci-app-adguardhome
