# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions

source ~/perl5/perlbrew/etc/bashrc

export TACHYON_WEBSITE_HOME=.
#export LUXON_WEBSITE_HOME=.
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

/bin/stty stop undef
/bin/stty start undef

export PERL_CPANM_OPT="--mirror http://192.168.2.18/minicpan --mirror-only"
export callback_host=localhost:5000
export EDITOR=vim
export APPLIBU_WEB_CONFIG_LOCAL_SUFFIX=sandbox

#PATH=$PATH:$HOME/bin:/usr/local/kyototycoon/bin
source ~/perl5/perlbrew/etc/bashrc
PATH="$PATH":/usr/local/bin/vim


function myvimdiff() {
vimdiff $6 $7
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export CAMPAIGNDRIVER_REDIS_PASSWORD_LOCAL='redispass'

# bash_completionによるgitブランチの可視化

if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
    . /usr/local/etc/bash_completion.d/git-prompt.sh
fi

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

if [ -f $BASH_COMPLETION_DIR/git ]; then
    # branch名ごと色表示
    if [ "$(__git_ps1)" == 'master' ]; then
        export PS1='$(check-shell-command): \[\033[40;1;32m\]\u\[\033[2;32m\]@\[\033[0m\]\[\033[40;32m\]\h \[\033[36m\]\w  \[\033[1;33m\]$(__perl_version)\[\033[0m\] \[\033[1;36m\]$(__git_ps1 "[%s]")\[\033[0m\] \[\033[0m\]\[\033[40;2;37m\]`date +"%Y/%m/%d %H:%M:%S"` \[\033[0m\] \n $ '
    else
        export PS1='$(check-shell-command): \[\033[40;1;32m\]\u\[\033[2;32m\]@\[\033[0m\]\[\033[40;32m\]\h \[\033[36m\]\w  \[\033[1;33m\]$(__perl_version)\[\033[0m\] \[\033[1;33m\]$(__git_ps1 "[%s]")\[\033[0m\] \[\033[0m\]\[\033[40;2;37m\]`date +"%Y/%m/%d %H:%M:%S"` \[\033[0m\] \n $ '
    fi
else
    export PS1='$(check-shell-command): \[\033[40;1;32m\]\u\[\033[2;32m\]@\[\033[0m\]\[\033[40;32m\]\h \[\033[36m\]\w \[\033[0m\] \[\033[1;33m\]$(__perl_version)\[\033[0m\] \[\033[40;2;37m\]`date +"%Y/%m/%d %H:%M:%S"` \[\033[0m\] \n $ '
fi

# チュートリアル
echo -e "\033[0;36m Nguyen Huu Bao Trung's  Development Enviroment V1.0\033[0;39m\n"
if [ ! -f $HOME/.ssh/id_rsa ]; then
    echo -e "ssh-keygenを実行して公開鍵を作成してください。\n"
fi
if [ "`git config --global user.name`" = "" ]; then
    echo -e "次のコマンドを実行して、user.nameをきめてください。"
    echo -e "git config --global user.name \"名前\"\n"
fi
if [ "`git config --global user.email`" = "" ]; then
    echo -e "次のコマンドを実行して、user.emailをきめてください。"
    echo -e "git config --global user.email \"メールアドレス\"\n"
fi


# ----------------------------
# 顔文字作成
# ----------------------------
function check-shell-command {
if [ $? -eq 0 ]; then
    face="\e[1;36m (＝＾ω＾)ノよ～"
else
    face="\e[41;1;33m（；￣Д￣）えっ?"
fi
echo -e "${face}\e[m"
}

# ----------------------------
# User specific aliases and functions
# ----------------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -F --color=auto'
alias lsa='ls -a --color=auto'
alias vi='vim'
alias ag='ag -i'
alias grep='grep --color=auto'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias tmux='tmux -2'
alias tachyon='cd /home/nghuubaotrung/tachyon/branches/ref_9871/'
alias adschema='cd /home/tachyon/tachyon/branches/ref_9871/lib/Tachyon/Website/Controller/A/Manager/Schema/'
alias temschema='cd /home/tachyon/tachyon/branches/ref_9871/template/a/manager/schema/'
alias serverup='TACHYON_WEBSITE_HOME=. script/tachyon_website_server.pl -r -p 3000 '
alias module='cd /home/nghuubaotrung/perl5/perlbrew/perls/perl-5.10.1/lib/site_perl/5.10.1/'

alias luxon='cd /home/nghuubaotrung/luxon/branches/ref_10058/'
alias 14='cd /home/nghuubaotrung/14AppDriver/14-appdriver-job-task-sharing/'
# ----------------------------
# perlバージョン表示
# ----------------------------
__perl_version() {
    local perl_version=`perlbrew list | sed -ne 's#^* ##p' | cut -d '-' -f 2`
    echo "[perl:${perl_version}]"
}

source ~/perl5/perlbrew/etc/bashrc
source ~/perl5/perlbrew/etc/bashrc
