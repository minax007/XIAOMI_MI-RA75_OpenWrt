[![Build OpenWrt](https://github.com/minax007/XIAOMI_MI-RA75_OpenWrt/actions/workflows/build-openwrt-mira75.yml/badge.svg)](https://github.com/minax007/XIAOMI_MI-RA75_OpenWrt/actions/workflows/build-openwrt-mira75.yml)
[![release](https://img.shields.io/github/v/release/minax007/XIAOMI_MI-RA75_OpenWrt.svg)](https://github.com/minax007/XIAOMI_MI-RA75_OpenWrt/releases)

# OpenWrt snapshot for Xiaomi Mi-RA75 (Xiaomi Mi WiFi Range Extender AC1200)

This GitHub action is to build fresh images of latest OpenWrt snapshot for the Mi-RA75 using imagebuilder.

![grafik](https://github.com/minax007/XIAOMI_MI-RA75_OpenWrt/assets/67478561/485a5027-3675-4829-9379-7b266a0b5564)

Following packages are already installed, so that you do not need to install them via the command line afterwards: 

Added features | Package names
------------ | -------------
**LuCI GUI** | luci
**LuCI Material Theme** | luci-theme-material 
**LuCI Bandwidth Monitor** | luci-app-nlbwmon
**VPN** | OpenSSL VPN
__________________________________________________________________
**Official OpenWrt snapshot of Mi-RA75 build without LuCI:**

https://firmware-selector.openwrt.org/?version=SNAPSHOT&target=ramips%2Fmt76x8&id=xiaomi_mi-ra75 
__________________________________________________________________
**Official OpenWrt snapshot download directory for MT76x8 routers, which includes the imagebuilder used in this action script:**

https://downloads.openwrt.org/snapshots/targets/ramips/mt76x8/
