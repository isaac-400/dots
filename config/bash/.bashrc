# --------------------------------------------------------------------
# After editing this file, type `source .bash_profile' in any shell
# which is already open and in which you want the changes to take
# effect.  For more info type `man bash'.
# --------------------------------------------------------------------


# --------------------------------------------------------------------
# --------------------------------------------------------------------
# Set PS1 prompt
# \u: userid, \h:hostname, \w: pwd
#
export PS1='[\u@\h:\w]\$ '
# --------------------------------------------------------------------
if [ -d ~/.cache/wal/ ]; then
  # Import colorscheme from 'wal' asynchronously
  # &   # Run the process in the background.
  # ( ) # Hide shell job control messages.
  # Not supported in the "fish" shell.
  (cat ~/.cache/wal/sequences &)

  # To add support for TTYs this line can be optionally added.
  source ~/.cache/wal/colors-tty.sh

  wal-tile() {
      wal -n -i "$@"
      feh --bg-scale "$(< "${HOME}/.cache/wal/wal")"
  }
  #wal-tile "~/dotfiles/walls/1.jpg"

fi
# --------------------------------------------------------------------
# setup gpg agent
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null
# --------------------------------------------------------------------
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/isaac/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/isaac/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/isaac/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/isaac/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# --------------------------------------------------------------------
# load aliases
source ~/.aliases
# --------------------------------------------------------------------
# exports
export EDITOR=vim

if [ -n "$DISPLAY" ]; then
  export BROWSER=brave
else
  export BROWSER=lynx
fi

export PATH=/home/isaac/.local/bin:$PATH
# --------------------------------------------------------------------
