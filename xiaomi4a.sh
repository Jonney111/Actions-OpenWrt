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
# sed -i 's/luci-lib-ipkg/luci-base/g' package/feeds/kenzo/luci-app-bypass/Makefile


# Modify system hostname（FROM OpenWrt CHANGE TO JonneyLee）
# sed -i 's/OpenWrt/JonneyLee/g' package/base-files/files/bin/config_generate

# Replace the default software source
# sed -i 's#openwrt.proxy.ustclug.org#mirrors.bfsu.edu.cn\\/openwrt#' package/lean/default-settings/files/zzz-default-settings
# sed -i 's/invalid users = root/#invalid users = root/g' feeds/packages/net/samba4/files/smb.conf.template




# 拉取软件包



#diskman
svn co https://github.com/lisaac/luci-app-diskman/trunk/applications/luci-app-diskman package/luci-app-diskman
#passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/luci-app-passwall




# 删除重复包

#rm -rf feeds/luci/themes/luci-theme-argon
