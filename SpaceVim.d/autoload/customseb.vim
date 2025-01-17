

function! myspacevim#after() abort

endfunction

function! myspacevim#after() abort

  " you can remove key binding in bootstrap_after function
  " for example, remove F3 which is to open file tree by default.
  " unmap <F3>
  " create new key binding to open file tree.
  " nnoremap <silent> <F3> :Defx<Cr> 


  let g:neovide_position_animation_length=0
  let g:neovide_cursor_animation_length=0.00
  let g:neovide_cursor_trail_size=0
  let g:neovide_cursor_animate_in_insert_mode=0
  let g:neovide_cursor_animate_command_line=0
  let g:neovide_scroll_animation_far_lines=0
  let g:neovide_scroll_animation_length=0.00

  unmap <C-w>
  map <F10> :echo 'hello'<CR>
  " unmap <C-h>
  " unmap <C-j>
  " unmap <C-h>
  " unmap <C-l>
  " noremap <C-h> <C-w>h
  " noremap <C-j> <C-w>j
  " noremap <C-h> <C-w>h
  " noremap <C-l> <C-w>l
  "
endfunction

