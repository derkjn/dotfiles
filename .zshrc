# Load the shell dotfiles, and then some:
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export ZSH=/Users/nick/.oh-my-zsh
ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh

source "/Users/nick/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
