" Prevents multiple invocations
let s:guard = 'b:did_ftplugin_ruby' | if exists(s:guard) | finish | endif

if has_key(g:plugs, 'ale')
  let b:ale_fixers = [ 'rufo', 'rubocop' ]
  let b:ale_fix_on_save = 1
endif

let {s:guard} = 1 " EOF
