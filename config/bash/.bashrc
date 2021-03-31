# --------------------------------------------------------------------
# After editing this file, type `source .bash_profile' in any shell
# which is already open and in which you want the changes to take
# effect.  For more info type `man bash'.
# --------------------------------------------------------------------


# --------------------------------------------------------------------
# aliases used for cs50

alias mygcc='gcc -Wall -pedantic -std=c11 -ggdb'
alias myvalgrind='valgrind --leak-check=full --show-leak-kinds=all'

# safety aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# convenience aliases
alias ls='ls -F --color=auto'
alias mkdir='mkdir -p'
alias which='type -all'
alias du='du -kh'
alias df='df -kTh'

#Custom Aliases:
alias la="ls -la"
# --------------------------------------------------------------------
# Set PS1 prompt
# \u: userid, \h:hostname, \w: pwd
#
export PS1='[\u@\h:\w]\$ '
#

# --------------------------------------------------------------------
# If running interactively, then:
if [ "$PS1" ]; then

    # allow core dumps
    # Note: Thayer Computing granted CCP's request to enable core dumps
    ulimit -c unlimited

    # Make reasonable environment
    stty sane dec

    # Set ignoreeof if you don't want EOF as the sole input to the
    # shell to immediately signal a quit condition.  This only happens
    # at the start of a line if the line is empty, and you haven't
    # just deleted a character with C-d.  I turn this on in
    # ~/.bash_profile so that only login shells have the right to be
    # obnoxious.
    ignoreeof=3

    history_control=ignoredups

    # Set notify if you want to be asynchronously notified about
    # background job completion.
    notify=

    # Make it so that failed `exec' commands don't flush this shell.
    no_exit_on_failed_exec=

    command_oriented_history=
fi
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
  wal-tile "~/dotfiles/walls/1.jpg"

fi
# --------------------------------------------------------------------
# setup gpg agent
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

