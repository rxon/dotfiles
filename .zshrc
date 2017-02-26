source ~/.zplug/init.zsh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/share/git-core/contrib/diff-highlight:/Users/R/.nodebrew/current/bin"

alias c='cd $(ls -F -A | grep /|peco)'
alias get='ghq get'

zplug "zplug/zplug", hook-build:'zplug --self-manage'

zplug "motemen/ghq", \
    as:command, \
    from:gh-r, \
    rename-to:ghq

zplug "peco/peco", \
    as:command, \
    from:gh-r

zplug "wg/wrk", \
    as:command, \
    hook-build:"make"

zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq

zplug "zsh-users/zsh-syntax-highlighting"

zplug "rxon/84e4bbed8309004303364e8bb78726a1", \
    from:gist, \
    as:command, \
    use:node-update.sh

zplug "rxon/7b4387478f264b3f8c9bb126a8a1773a", \
    from:gist, \
    as:theme, \
    use:honukai.zsh-theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
