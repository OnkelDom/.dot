# .bashrc
export TERM=xterm

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Fix file deletion for ATOM Editor
export ELECTRON_TRASH="gio"

# Use Powerline
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
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
