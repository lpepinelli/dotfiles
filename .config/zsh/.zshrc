# $PATH.
export PATH="/home/pepinelli/bin:/home/pepinelli/.nvm/versions/node/v20.11.0/bin:/home/pepinelli/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin"
path+=('$HOME/dotnet')
path+=('/usr/lib/jvm/jdk-11/bin')
path+=('/home/pepinelli/.local/bin')

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias zshreload="source ~/.zshrc"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

# Plugins
plugins=(
	git
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Custom configs
export DOTNET_ROOT=$HOME/dotnet

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

prompt_dir() {
  prompt_segment 217 $CURRENT_FG '%2~'
}
