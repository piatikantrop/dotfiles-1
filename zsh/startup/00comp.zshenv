# vim: set ft=zsh :

# Figure out the SHORT hostname
if [ -n "$commands[scutil]" ]; then
  # OS X
  SHORT_HOST=$(scutil --get ComputerName)
  SHORT_HOST="${SHORT_HOST%% \(*\)}"
  SHORT_HOST="${SHORT_HOST// /-}"
  SHORT_HOST="${SHORT_HOST//’/}"
  SHORT_HOST="${SHORT_HOST:l}"
else
  SHORT_HOST=${HOST/.*/}
fi
export SHORT_HOST

# Save the location of the current completion dump file.
# Forces oh-my-zsh to use this location.
ZSH_COMPDUMP="${ZSH_CACHE_DIR}/zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
# I swear OMZ just keeps adding crap to annoy me.
ZSH_DISABLE_COMPFIX=true
