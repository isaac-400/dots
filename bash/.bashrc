# --------------------------------------------------------------------
# After editing this file, type `source .bash_profile' in any shell
# which is already open and in which you want the changes to take
# effect.  For more info type `man bash'.
# --------------------------------------------------------------------

# --------------------------------------------------------------------
# Set PS1 prompt
# \u: userid, \h:hostname, \w: pwd
#
export PS1='[\u@\h:\w]\$ '
# setup gpg agent
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null
# --------------------------------------------------------------------
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

export PATH=/home/f0043hw/.local/bin:$PATH
export PATH=/home/f0043hw/.cargo/bin:$PATH
# --------------------------------------------------------------------
set bell-style none
# --------------------------------------------------------------------
# Start x on login
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    startx
fi
