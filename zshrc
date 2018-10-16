if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh
########################
zplug 'awerner/dotfiles'
if ! zplug check; then zplug install; fi
zplug load
if ! zplug check; then zplug install; fi
zplug load
