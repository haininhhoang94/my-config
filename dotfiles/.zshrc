# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
[[ $TMUX = "" ]] && export TERM="xterm-256color"
source $HOME/.aliases

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
#autoload -U promptinit; promptinit
#prompt pure

ZSH_THEME="spaceship"
#ZSH_THEME=""

#fpath+=$HOME/.zsh/pure

# Se# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


# Below is some command initialize to zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
	. "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
	export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Tmux auto start
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	tmux attach -t 0 || tmux new -s 0
fi

conda activate pyds
cd ~/WSL
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export QT_SCALE_FACTOR=1.5

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export XDG_RUNTIME_DIR="$HOME/temp/"
export RUNLEVEL=3
