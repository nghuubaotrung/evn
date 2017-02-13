export TERM="xterm-256color"
export ZSH=/Users/nguyen_huubaotrung/.oh-my-zsh

export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad;

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="nghuubaotrung"
#ZSH_THEME="amuse"

# CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

# export UPDATE_ZSH_DAYS=13

DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git ruby osx bundler brew rails emoji-clock)

# User configuration
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export ANT_HOME=`/Users/nguyen_huubaotrung/Tools/apache-ant-1.9.4/bin/ant`
export PATH="/Users/nguyen_huubaotrung/Tools/android-sdks/tools:/Users/nguyen_huubaotrung/Tools/android-sdks/platform-tools:/Users/nguyen_huubaotrung/Tools/android-sdks:/Users/nguyen_huubaotrung/Tools/android-ndk-r9d:/Users/nguyen_huubaotrung/Tools/cocos2d-x/cocos2d-x-3.4/templates:/Users/nguyen_huubaotrung/Tools/cocos2d-x/cocos2d-x-3.4/tools/cocos2d-console/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/nguyen_huubaotrung/android-sdks/platform-tools"
export PATH="/Users/nguyen_huubaotrung/Tools/android-sdks/build-tools/21.1.2":$PATH
export PATH="/Users/nguyen_huubaotrung/Tools/activator-1.3.2-minimal":$PATH
export PATH=$PATH:"/Users/nguyen_huubaotrung/Tools/play-2.2.3"
export PATH="/Users/nguyen_huubaotrung/Tools/gradle-2.3/bin/":$PATH
#export PATH="/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home/lib":$PATH
export PATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home/lib":$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/Users/nguyen_huubaotrung/bin/":$PATH
export PATH="/Users/nguyen_huubaotrung/Tools/rundeck/rundeck-launcher/tools/bin":$PATH


# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/nguyen_huubaotrung/Tools/cocos2d-x/cocos2d-x-3.4/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/nguyen_huubaotrung/Tools/cocos2d-x/cocos2d-x-3.4/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/nguyen_huubaotrung/Tools/android-ndk-r9d
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/nguyen_huubaotrung/Tools/android-sdks
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/Users/nguyen_huubaotrung/Tools/apache-ant-1.9.4/bin
export PATH=$ANT_ROOT:$PATH

export PLUGIN_ROOT=/Users/nguyen_huubaotrung/Tools/cocos3d-x/cocos2d-x-3.4/plugin/
export PATH=$PLUGIN_ROOT:$PATH

export NDK_MODULE_PATH=$PLUGIN_ROOT/publish
export PATH=$NDK_MODULE_PATH:$PATH

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

##Change path according your installation of Xcode
#export XCODEB_PATH='/Users/nguyen_huubaotrung/Tools/Xcode6.3.1/Xcode.app/Contents/Developer/usr/bin/xcodebuild'
#export _CODESIGN_ALLOCATE_='/Users/nguyen_huubaotrung/Tools/Xcode6.3.1/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/codesign_allocate'
##Trigger xcodebuild with correct environment
#$XCODEB_PATH -version
##Check supported sdks in this Xcode version
#$XCODEB_PATH -showsdks

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs
case "${OSTYPE}" in
    darwin*)
        alias ls="ls -G"
        alias ll="ls -lG"
        alias la="ls -laG"
        ;;
    linux*)
        alias ls='ls --color'
        alias ll='ls -l --color'
        alias la='ls -la --color'
        ;;
esac

#alias ag='ag -i'
#alias ag='ag -i'
#alias ls='ls -G'
#alias lsa='ls -la -G'
alias training="ssh nghuubaotrung@192.168.56.13"
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias tmuxconf="vim ~/.tmux.conf"
alias eclip='/Users/nguyen_huubaotrung/Source-code/eclipse_dev_space/'
alias sdk='/Users/nguyen_huubaotrung/Source-code/appdriver-sdk/sdk-native/Android/AppDriverSDK'
alias bnb='/Users/nguyen_huubaotrung/Source-code/bnbTrack'
alias step_server='ssh nguyen.huubaotrung@54.251.161.78'
alias theCat='ssh nghuubaotrung@192.168.220.13'
alias theCat2='ssh vagrant@192.168.30.13'
alias backup='ssh nghuubaotrung@192.168.220.23'
alias port_forward='sudo vim /Library/Preferences/VMware\ Fusion/vmnet8/nat.conf'
alias vmware_stop="sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --stop"
alias vmware_start="sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --start"
alias battery_dump="adb shell dumpsys battery unplug"
alias ios_sdk="cd /Users/nguyen_huubaotrung/Source-code/ada-sdk/ios/sdk-native"
alias sdk_obfus="cd /Users/nguyen_huubaotrung/Source-code/Obj_Guard/sdk-ios-obfuscation"
alias public="cd /Volumes/AdwaysPublic"
alias teranyan="cd /Users/nguyen_huubaotrung/Vagrant/teranyan"
alias asuka="cd /Users/nguyen_huubaotrung/Source-code/asuka/"
alias ssh_teranyan="ssh nghuubaotrung@192.168.33.13"
alias mokumoku="cd /Users/nguyen_huubaotrung/StudioProjects/mokumoku_android/android_studio_test_app"
alias cd_rundeck="cd /Users/nguyen_huubaotrung/Tools/rundeck/rundeck-launcher/"
alias run_rundeck="java -XX:MaxPermSize=256m -Xmx1024m -jar rundeck-launcher-2.6.7.jar"
alias asuka_bot="cd /Users/nguyen_huubaotrung/Source-code/bnb-report-bot"
alias run_asuka="HUBOT_SLACK_TOKEN=xoxb-19528944500-lY2LXuwjilvj5sIng7aGK6Kt ./bin/hubot --adapter slack"
export PATH=$HOME/bin:$PATH
