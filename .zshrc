export ZSH=/Users/ramon/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(pyenv init - zsh)"
eval "$(pyenv virtualenv-init - zsh)"

NEW_RELIC_CONFIG_FILE=~/.newrelic.ini

export NVM_DIR="/Users/ramon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function myclone() {
    git clone git@github.com:ramonsaraiva/$@
}

function managepy() {
    python manage.py $@
}

alias gcm=myclone

alias ca="source ~/bin/ca"
alias sca="source ~/bin/sca"
alias kca="source ~/bin/kca"
alias qca="pyenv deactivate ca"
alias lapi="source ~/bin/lapi"

alias m=managepy
alias celp="./manage.py celery purge"
alias cel="./manage.py celeryd -l info -Q celery"
alias red="redis-server"
alias rf="redis-cli FLUSHALL"
alias rs="./manage.py runserver"
alias cpyc="find . -name '*.pyc' -delete"
