set -x fish_greeting ''
source .profile
alias folio='cd $HOME/Documentos/folio && git status'
alias folio_back='cd $HOME/Documentos/folio_back && git status'
alias ff='folio'
alias fb='folio_back'
alias st='git status'
alias ys='yarn start'
alias yd='yarn dev'
alias front_new_branch='. $HOME/.scripts/new_branch_front.sh'
alias back_new_branch='. $HOME/.scripts/new_branch_back.sh'
alias mastersetup='. $HOME/.scripts/mastersetup.sh'
alias commit='. $HOME/.scripts/commit.sh'
alias commit-back='. $HOME/.scripts/commit-back.sh'
alias current='git rev-parse --abbrev-ref HEAD'
alias fnb='front_new_branch'
alias bnb='back_new_branch'
alias check='git checkout'
alias checkout='check'
alias new="check -b"
alias stash='git stash'
alias push='git push'
alias fetch='git fetch'
alias pull='git pull'
alias merge='git merge'
alias add='git add'
alias cm='git commit -m'
alias config='vi $HOME/.config/fish/config.fish'
alias sship='vim $HOME/.config/starship.toml'
alias vim='vi'
alias c='clear'
alias cl='clear'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dot='dotfiles'
alias tm='bpytop'
alias nx='cd $HOME/Documentos/SysDVR-Client && dotnet SysDVR-Client.dll bridge 192.168.2.114 & disown'
alias dock='sudo docker '
alias bb='cd $HOME/Documentos/barberapp'
alias android='. $HOME/Downloads/android-studio-2021.1.1.22-linux/android-studio/bin/studio.sh'

alias folio='cd $HOME/Documentos/folio' 
alias front='folio && check dev1/front'
alias back='folio_back && check dev1/backend'
starship init fish | source
