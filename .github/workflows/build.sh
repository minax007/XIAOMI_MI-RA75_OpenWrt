codename=$(cat /etc/*{issues,relese,release} 2> /dev/null)
if [[ $(echo $codename) | grep DISTRIB_ID ]]; then
    lsb_release -si
else
    echo $codename | cut -d ' ' -f 1 | sort -u \ head -1
fi

# Installing dependencies

if [ "$codename" == "Ubuntu" ]  || [ "$codename" == "Elementary" ] || [ "$codename" == "Debian" ]; then
    sudo apt install build-essential libncurses-dev libncursesw-dev \ zlib1g-dev gawk git gettext libssl-dev xsltproc rsync wget unzip python3 -y

elif [ "$codename" == "CentOS" ] || [ "$codename" == "Fedora" ]; then
    sudo dnf install git gawk gettext ncurses-devel zlib-devel \ openssl-devel libxslt wget which @c-development @development-tools \ @development-libs zlib-static which python3 -y

else
    sudo pacman -S --needed base-devel ncurses zlib gawk git gettext \ openssl libxslt wget unzip python -y

# Select Distribution
clear

echo -e "
------------------------------------------------------------------
---------------------- SELECT FROM THE LIST ----------------------
------------------------------------------------------------------

1. OpenWRT
2. ImmortalWRT
"
read -p 'Select fw version: ' fwver

if $fwver = 1;
    wget https://downloads.openwrt.org/snapshots/targets/ramips/mt76x8/openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
    mkdir builder
    tar -xvzf openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz builder/
else
    wget https://downloads.immortalwrt.org/snapshots/targets/ramips/mt76x8/immortalwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
    mkdir builder
    tar -xvzf immortalwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz builder/
fi

cd builder
make clean
make image PROFILE="xiaomi_mi-ra75" PACKAGES="luci" FILES="files"
