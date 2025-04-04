"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2023 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg@outlook.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================

" set default encoding to utf-8
" Let Vim use utf-8 internally, because many scripts require this
set encoding=utf-8
scriptencoding utf-8

" Enable nocompatible
if &compatible
  set nocompatible
endif

let g:_spacevim_root_dir = escape(fnamemodify(resolve(fnamemodify(expand('<sfile>'),
      \ ':p:h:gs?\\?'.((has('win16') || has('win32')
      \ || has('win64'))?'\':'/') . '?')), ':p:gs?[\\/]?/?'), ' ')
lockvar g:_spacevim_root_dir
if has('nvim')
  let rtps = [g:_spacevim_root_dir]
  for rtp in split(&rtp, ',')
    if rtp =~# 'nvim-qt'
      call insert(rtps, 0, rtp)
    else
      call add(rtps, rtp)
    endif
  endfor
  let &rtp = join(rtps, ',')
else
  let &rtp = g:_spacevim_root_dir . ',' . $VIMRUNTIME
endif
call SpaceVim#logger#info('Loading SpaceVim from: ' . g:_spacevim_root_dir)
call SpaceVim#logger#info('default rtp is:')
call map(split(&rtp, ','), 'SpaceVim#logger#info("  > " . v:val)')
if has('vim_starting')
  " python host
  " @bug python2 error on neovim 0.6.1
  " let g:loaded_python_provider = 0
  if !empty($PYTHON_HOST_PROG)
    let g:python_host_prog  = $PYTHON_HOST_PROG
    call SpaceVim#logger#info('$PYTHON_HOST_PROG is not empty, setting g:python_host_prog:' . g:python_host_prog)
  endif
  if !empty($PYTHON3_HOST_PROG)
    let g:python3_host_prog = $PYTHON3_HOST_PROG
    call SpaceVim#logger#info('$PYTHON3_HOST_PROG is not empty, setting g:python3_host_prog:' . g:python3_host_prog)
    if !has('nvim') 
          \ && (has('win16') || has('win32') || has('win64'))
          \ && exists('&pythonthreedll')
          \ && exists('&pythonthreehome')
      let &pythonthreedll = get(split(globpath(fnamemodify($PYTHON3_HOST_PROG, ':h'), 'python*.dll'), '\n'), -1, '')
      call SpaceVim#logger#info('init &pythonthreedll:' . &pythonthreedll)
      let &pythonthreehome = fnamemodify($PYTHON3_HOST_PROG, ':h')
      call SpaceVim#logger#info('init &pythonthreehome:' . &pythonthreehome)
    endif
  endif
endif

call SpaceVim#begin()

call SpaceVim#custom#load()

if has('timers')
  call timer_start(g:spacevim_lazy_conf_timeout, 'SpaceVim#default#keyBindings') 
else
  call SpaceVim#default#keyBindings()
endif

autocmd BufNewFile,BufRead *.ml,*.mli,*.eliom,*.eliomi :set filetype=ocaml
"
let g:neovide_cursor_animation_length=0.00
let g:neovide_cursor_trail_size=0
let g:neovide_cursor_animate_in_insert_mode=0
let g:neovide_cursor_animate_command_line=0
let g:neovide_scroll_animation_far_lines=0
let g:neovide_scroll_animation_length=0.00

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

set clipboard=unnamed
" noremap <C-w> :bdelete <CR>
  

call SpaceVim#end()

call SpaceVim#logger#info('finished loading SpaceVim!')
" vim:set et sw=2 cc=80:




