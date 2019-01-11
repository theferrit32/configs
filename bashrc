#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/ssh-agent.sock
if [ ! -S $SSH_AUTH_SOCK ]; then
    eval $(ssh-agent -a $SSH_AUTH_SOCK | grep -v "^echo")
fi

