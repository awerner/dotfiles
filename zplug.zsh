zplug 'zplug/zplug', hook-build:'zplug --self-manage', defer:0

zplug "lib/completion", from:oh-my-zsh
zplug "lib/git", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/key-bindings", from:oh-my-zsh
zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
zplug "junegunn/fzf", use:shell/key-bindings.zsh, defer:1
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:3

case `uname -s` in
  Linux)
    zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:\*linux_amd64\*
    zplug "ogham/exa", from:gh-r, as:command, use:\*linux-x86\*, rename-to:exa
    ;;
  Darwin)
    zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:fzf, use:\*darwin_amd64\*
    zplug "ogham/exa", from:gh-r, as:command, use:\*macos-x86\*, rename-to:exa
   ;;
esac
