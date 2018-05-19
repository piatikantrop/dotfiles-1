# Create a cache directory if it doesn't exist.
if [ ! -d "${ZDOTDIR:-${HOME}}/.zsh/cache" ]; then
  mkdir -p "${ZDOTDIR:-${HOME}}/.zsh/cache"
fi

# Force starting compinit as early as possible
declare -a compinit_args=( '-d' "$ZSH_COMPDUMP" )
if [[ "$module_path" =~ /usr/local/Cellar/* ]] && (( UID == 0 )); then
  compinit_args+=( '-u' )
fi
autoload -Uz compinit && compinit "${(@)compinit_args}"

unset compinit_args
function compinit { }

# Complete aliases
setopt complete_aliases
