#!/usr/bin/env zsh

set -eu
setopt pipefail

declare -r bin="$1"; shift
declare -r node_version="$1"; shift
declare -Ura packages=( "$@" )

echo '#!/bin/bash'
echo
echo '##marker: NODEJS-CLI-TOOL##'
echo
echo 'set -eEuo pipefail'
echo
echo "bin=${(q@)bin}"
echo "packages=( ${(q@)packages} )"
echo "node_version=${(q)node_version}"
echo 'prefix="${HOME}/.cache/nodejs-cli-tool/node-${node_version}"'
echo
echo 'export NODENV_VERSION=$node_version'
echo
echo 'function do_install() {'
echo '  npm install --global --prefix "$prefix" "${packages[@]}"'
echo '}'
echo
echo 'if [ -n "${TOOL_INSTALL:-}" ]; then'
echo '  do_install'
echo '  exit'
echo 'fi'
echo
echo 'global_bin="${prefix}/bin"'
echo
echo 'if [ -x "${global_bin}/${bin}" ]; then'
echo '  exec "${global_bin}/${bin}" "$@"'
echo 'fi'
echo
echo 'do_install >/dev/null 2>&1'
echo 'exec "${global_bin}/${bin}" "$@"'
echo
echo '# EOF'

# EOF
