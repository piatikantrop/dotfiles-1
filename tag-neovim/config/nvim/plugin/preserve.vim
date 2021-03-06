" A wrapper function to restore the cursor position, window position,
" and last search after running a command.
function! Preserve(command)
  " Save the last search
  let l:last_search=@/
  " Save the current cursor position
  let l:save_cursor = getpos('.')
  " Save the window position
  normal! H
  let l:save_window = getpos('.')
  call setpos('.', l:save_cursor)

  " Do the business:
  execute a:command

  " Restore the last_search
  let @/=l:last_search
  " Restore the window position
  call setpos('.', l:save_window)
  normal! zt
  " Restore the cursor position
  call setpos('.', l:save_cursor)
endfunction
