---
title: "Following Head"
description: "The latest changes in master branch since last release."
---

# [Home](../) >> Following Head

This page documents changes in master branch since last release v2.3.0

<!-- vim-markdown-toc GFM -->

- [Next release](#next-release)
- [New features](#new-features)
- [Bugfixs](#bugfixs)
- [Docs](#docs)
- [Tests](#tests)
- [Others](#others)
- [Breakchanges](#breakchanges)
- [Latest Release](#latest-release)

<!-- vim-markdown-toc -->

## Next release

The next release is `v2.4.0`

<!--
call SpaceVim#dev#followHEAD#update('en')
-->
<!-- SpaceVim follow HEAD start -->
## New features

- feat(cpicker): add tools#cpicker layer
- feat(core): add logevent plugin
- feat(github): add ci files
- feat(github): enable github action
- perf(core): add opt for lazy load config
- perf(tabline): use BufAdd instead of BufNew
- perf(lazy): lazy load plugins
- perf(dein): skip type checking
- perf(layer): lazy load layer config
- perf(neo-tree): use lua notify
- perf(plugins): lazy load plugins
- perf(git): add key binding `v` to view log
- feat(qml): add `lang#qml` layer
- perf(buf): open buf in best win
- perf(nvimtree): use nvim-web-devicons
- perf(markdown): lazy load toc plugin
- perf(core): lazy load core plugins
- perf(edit): lazy load grammarous and tabular
- perf(checkers): lazy load neomake
- feat(autocmd): add SpaceVimLspSetup autocmd
- perf(start): lazy load plugins
- perf(cmp): lazy load nvim-cmp
- perf(telescope): lazy load telescope
- perf(co-author): complete co-author info
- perf(gtags): make gtags and ctags lazy loaded
- perf(default): remove unused var & functions
- perf(neovim): use nvim-cmp & skip checking python
- perf(guide): remove debug info
- perf(statusline): support quickfix & loclist
- perf(install): clone repo with --depth 1
- perf(stl): add input_method function
- perf(helpful.vim): add helpful tag
- perf(doc): update quick start guide
- feat(statusline): add lua statusline
- feat(kotlin): update kotlin lsp support
- perf(bundle): use bundle echodoc.vim
- perf(bundle): use nvim-surround for nvim 0.8.0+
- perf(autocmd): move autocmds.vim to lua
- perf(bundle): use telescope 0.1.8 for nvim 0.10.0
- perf(guide): use timer to display win
- perf(dev): use task to open nvim and vim
- perf(guide): improve key binding guide
- perf(autocmd): close vim on last quickfix win
- perf(autocmd): move syntax autocmd to lua
- perf(autocmds): use lua autocmds instead of viml
- perf(statusline): improve syntax info color
- perf(statusline): show errors counts on statusline
- perf(gruvbox): update gruvbox
- perf(colorscheme): update `NormalFloat` for one
- perf(lspconfig): update nvim-lspconfig to 9bda20f
- perf(cursor): hide cursor
- perf(history): update register `@/`
- perf(scrollbar): change min_size to 5
- perf(tabline): use lua tablineat function
- perf(tabline): add sep after hide left section
- feat(tabline): add lua tabline
- feat(format): add rustfmt
- perf(job): close job handle on_exit
- perf(format): use first executable formatter
- feat(format): add c format
- feat(ctags): remove tags before running ctags
- feat(format): support `:Format! filetype`
- perf(format): log formatter info
- feat(format): support custom format
- feat(format.lua) add format.lua
- feat(recordkey): support nvim 0.10.0
- perf(recordkey): use keytrans()
- perf(recordkey): ignore all events
- feat(recordkey): remove key via timer
- feat(recordkey): add recordkey plugin
- feat(git): complete `:Git branch`
- feat(notify): share viml notifys
- feat(bookmark): add VimLeave autocmd
- feat(bookmarks): update bookmarks lnums
- perf(bookmarks): skip empty bufname & buftype
- feat(bookmarks): edit existing annotation
- feat(bookmark): add virt_text support
- feat(bookmark): custom sign text and highlight
- feat(bookmarks): add new bookmark plugin
- perf(bookmark): add bookmark logger
- perf(telescope): remove `jk` for telescope
- feat(bookmarks): add telescope support
- feat(todo): add `todo_close_list` option
- feat(toml): add toml indent file

## Bugfixs

- fix(mapping): fix SPC a r/o
- fix(mapping): fix SPC b d key binding
- fix(tabline): update tabline on buflisted changed
- fix(custom): fix unknown key
- fix(mirror): remove `-f` opt
- fix(tabline): handle `BufNew` event
- fix(menu): fix unite menu
- fix(tasks): fix task status
- fix(format): format code in visual mode
- fix(git): fix git lazy command
- fix(projectmanager): skip when &autochdir is true
- fix(lsp): fix lua lsp WarningMsg
- fix(guide): fix prompt of flygrep
- fix(markdown): lazy load toc plugin on_ft
- fix(layer): fix all unknown functions
- fix(notify): fix unknown functions
- fix(find): fix find statusline
- fix(file): fix file api
- fix(python): add debug info for Shebang_to_cmd
- fix(compatible): fix nvim-0.5.0 support
- fix(lua): fix lua warnings
- fix(statusline): fix code runner and repl stl
- fix(statusline): fix syntax_checking function
- fix(default): fix default color template
- fix(scrollbar): check excluded_filetypes
- fix(format): format.nvim requires nvim 0.9.0+
- fix(statusline): fix display current tag
- fix(guide): use hide option only for nvim 0.10.0+
- fix(nerdtree): fix `Enter` key binding of nerdtree
- fix(vim): fix vim start with `vim --servername VIM`
- fix(mkdir): fix mkdir lua plugin
- fix(guide): move getName function to lua
- fix(task): check isBackground by boolean
- fix(defx): use defx for nvim 0.4.0+
- fix(compatible): fix bufname() and bufnr()
- fix(scrollbar): use zindex only for nvim 0.5.0+
- fix(cmp): use nvim-cmp for nvim v0.7.x or higher
- fix(argvs): fix parser_argv function
- fix(quickfix): fix quickfix autocmd
- fix(statusline): check vim.diagnostic.count
- fix(autosave): fix lua autosave plugin
- fix(tabline): fix default colorscheme tabline
- fix(gruvbox): fix NormalFloat highlight
- fix(lsp): set server_ready to false on LspDetach
- fix(lsp): fix `SPC e l` key binding
- fix(notify): fix notify cursor position
- fix(t_ve): remove `t_ve` from iedit.lua
- fix(rtp): fix default rpt
- fix(install): ln error if ~/.config doesn't exist
- fix(statusline): fix statusline highlight
- fix(statusline): fix statusline fireformat sep
- fix(ctrlg): fix filename format & clear highlight
- fix(statusline): fix inactive separators
- fix(tabline): fix `Ctrl-Shift-Left/Right` key
- fix(history): fix history pos
- fix(job): return 0 for empty table
- fix(job): check cmd before run job
- fix(format): check formatted_context and stdin
- fix(format): fix formatter end_line
- fix(mapping): fix typo in help for leader f b
- fix(recordkey): fix win order
- fix(bookmarks): fix next/previous function
- fix(bookmarks): fix `mn` & `mp` key bindings
- fix(bookmark): remove sign before add new bookmark
- fix(bookmark): remove extra unlet
- fix(bookmarks): unlet bookmarks when clear

## Docs

- docs(readme): update readme
- docs(bundle-plugins): add neo-tree link
- docs(autocomplete): update doc
- docs(opt): update doc of filemanager
- docs(help): update and rollback
- docs(help): update doc for editing
- docs(about): remove support email
- docs(help): update doc for tabline
- docs(help): update doc for filetree
- docs(typo): fix typo in post
- docs(help): add windows and ui doc
- docs(error): update doc for error handling
- docs(help): update buffer/file doc
- docs(highlighter): add doc for SPC s h
- docs(help): update help SpaceVim-options
- docs(guide): update help doc for mapping guide
- docs(help): update doc
- docs(help): add `:h SpaceVim-roadmap/community`
- docs(website): update following head and roadmap
- docs(scrollbar): add doc
- docs(tabline): add doc for ctrl-shift-letf/right
- docs(nerdtree): update doc for `ctrl-h`
- docs(html): update css file
- docs(html): add codeCopy button
- docs(repository): add repository url
- docs(index): update test version
- docs(index): update tested versions
- docs(about): update about page
- docs(go): update `:h SpaceVim-layers-lang-go`
- docs(go): lsp for golang
- docs(vimdoc): add extra space
- docs(website): update doc
- docs(website): change default img to workflow
- docs(website): update roadmap and following head
- docs(format): add readme
- docs(readme): remove extra link
- docs(index): remove news image
- docs(typo): fix image url

## Tests

- test(vader): fix vader test

## Others

- build(docker): use new docker repo
- build(makefile): update makefile
- chore(colorscheme): use bundle vim-hybrid
- chore(pydocstring): use bundle pydocstring
- chore(bundle): use bundle splitjoin
- chore(bundle): update helpful.vim
- revert(html): remove copy button
- refactor(format): refactor on_exit function
- refactor(format): enable format function
- chore(format): format code
- chore(bookmark): remove extra files
- chore(version): update to v2.4.0-dev

## Breakchanges
- revert(history)!: do not change register `@/`
<!-- SpaceVim follow HEAD end -->

## Latest Release

SpaceVim releases v2.3.0 at 2024-03-24, please check the release page:

- [SpaceVim releases v2.3.0](https://spacevim.org/SpaceVim-release-v2.3.0/) for all the details
