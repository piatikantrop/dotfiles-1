autoload -U is-at-least
ZGEN_RESET_ON_CHANGE=(
"${HOME}/.zsh/startup/0plugins.zsh"
"${HOME}/.zsh/plugins/"*(UN)
)

for _plugin_file in ~/.zsh/plugins/*.pre(UN); do
  source "$_plugin_file"
done

source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  for _plugin_file in ~/.zsh/plugins/*.zgen(UN); do
    source "$_plugin_file"
  done

  # Save it all to init script
  zgen save
fi

for _plugin_file in ~/.zsh/plugins/*.post(UN); do
  source "$_plugin_file"
done
unset _plugin_file

# EOF
