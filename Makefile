SPACEVIM_PATH   = $(HOME)/.SpaceVim
SPACEVIM_D_PATH = $(HOME)/.SpaceVim.d
XTERM_PATH      = $(HOME)/XTerm

.PHONY: check
check:
	@test "$(PWD)" = "$(SPACEVIM_PATH)" || \
    (echo "ERROR: \$$(PWD) must equal $(SPACEVIM_PATH)\nSTOP"; false)

.PHONY: clean
clean:
	test -L $(HOME)/.SpaceVim.d && $(RM) $(HOME)/.SpaceVim.d || true
	test -L $(HOME)/XTerm       && $(RM) $(HOME)/XTerm || true
	test -L $(HOME)/.vimrc      && $(RM) $(HOME)/.vimrc || true
	test -L $(HOME)/.vim        && $(RM) $(HOME)/.vim || true
	test -f $(HOME)/.vimrc      && mv $(HOME)/.vimrc $(HOME)/.vimrc.bk || true
	test -d $(HOME)/.vim        && mv $(HOME)/.vim $(HOME)/.vim.bk || true
	test -d $(HOME)/.SpaceVim.d && mv $(HOME)/.SpaceVim.d $(HOME)/.SpaceVim.d.bk || true
	test -f $(HOME)/XTerm       && mv $(HOME)/XTerm $(HOME)/XTerm.bk || true

.PHONY: install
install: clean
	ln -s $(HOME)/.SpaceVim/SpaceVim.d $(HOME)/.SpaceVim.d
	ln -s $(HOME)/.SpaceVim/XTerm      $(HOME)/XTerm

