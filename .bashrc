# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Fix file deletion for ATOM Editor
export ELECTRON_TRASH="gio"

# Powerline GO
function _update_ps1() {
    PS1="$(/usr/local/bin/powerline-go -error $? -shell bash -hostname-only-if-ssh)"
}

if [ "$TERM" != "linux" ] && [ -f "/usr/local/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# find ssh-agent
if [ -z "$SSH_AUTH_SOCK" ]
then
   eval $(ssh-agent) > /dev/null
   ssh-add -l > /dev/null || alias ssh='ssh-add -l > /dev/null || ssh-add && unalias ssh; ssh'
fi

# User specific aliases and functions
# aliases
alias tmuxx='tmux at'
alias takeover="tmux detach -a"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias azuresquid="10.63.32.68"
