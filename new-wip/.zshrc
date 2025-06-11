# If you come from bash you might have to change your $PATH.
export PATH="/home/pepinelli/bin:/home/pepinelli/.nvm/versions/node/v20.11.0/bin:/home/pepinelli/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin"
#path+=('$HOME/dotnet')
path+=('/usr/lib/jvm/jdk-11/bin')
path+=('/home/pepinelli/.local/bin')
path+=('/home/dev/DataGrip-2024.1.3/bin')

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias vim="nvim"
alias datagrip="datagrip.sh"
alias cat="batcat"
alias fzf="fzf --preview 'batcat --color=always --style=numbers --line-range=:500 {}'"
alias please="gum input --password | sudo -nS"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

source ~/catppuccin_mocha-zsh-syntax-highlighting.zsh

# Plugins
plugins=(
	git
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export DOTNET_ROOT=$HOME/dotnet

# Custom configs
 prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

prompt_dir() {
  prompt_segment 217 $CURRENT_FG '%2~'
}

mkcd () {
  case "$1" in /*) :;; *) set -- "./$1";; esac
  mkdir -p "$1" && cd "$1"
}
