# vim: ft=zsh :

export GOPATH="$HOME/go"

if [ -d "$HOME/.go" -a ! -d "$HOME/go" ]; then
  mv "$HOME/.go" "$HOME/go"
fi

[ -d "$GOPATH" ] || mkdir -p "$GOPATH"
path=($path "${GOPATH}/bin")
