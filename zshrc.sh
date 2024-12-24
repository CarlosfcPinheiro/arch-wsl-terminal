# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/carlosf/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
neofetch

# Create directory /run/postgresql and define permissions
sudo mkdir -p /run/postgresql/
sudo chown postgres:postgres /run/postgresql/
sudo chmod 775 /run/postgresql/

# Alias to start/end postgresql server
# start_pg => start postgresql server
# stop_pg => end postgresql server
alias start_pg='sudo -u postgres pg_ctl -D /var/lib/postgres/data start'
alias stop_pg='sudo -u postgres pg_ctl -D /var/lib/postgres/data stop'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion