# alias
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias stalk="watch -n1 $@"

# git alias
alias pick="git cherry-pick $@"
alias amend="git commit --amend"

# exports
export ANDROID_HOME="/opt/android/sdk"
export PATH=/opt/bin:/opt/android/sdk/platform-tools:${PATH}

# ccache
export USE_CCACHE=1
export CCACHE_DIR=/android/.ccache
export CCACHE_BASEDIR=/android/.ccache

# development buildtype to bypass some stuffs and dont build ART
export BUILD_BUILDTYPE=DEVELOPMENT

# functions
function update_the_cool_way()
{
  sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove && sudo apt-get autoclean
}

function send_udp()
{
    sudo sendip -p ipv4 -is 127.0.0.1 -p udp -us 5070 -ud 1337 -d "$@" -v 127.0.0.1
}

function avc_what()
{
    adb shell su -c dmesg | audit2allow -p /android/out/target/product/find7u/root/sepolicy
}

# source more
source /android/build/envsetup.sh &> /dev/null
