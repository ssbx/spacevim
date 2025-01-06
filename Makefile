test: build/vader | build
	$(VIM_BIN) -Nu test/vimrc $(VIM_Es) -c 'Vader! test/**'

COVIMERAGE=$(shell command -v covimerage 2>/dev/null || echo build/covimerage/bin/covimerage)

test_coverage: $(COVIMERAGE) build/vader | build
	$(COVIMERAGE) run --source after  --source syntax --source autoload --source colors --source config --source ftplugin $(VIM_BIN) -Nu test/vimrc $(VIM_Es) -c 'Vader! test/**'

#$(COVIMERAGE):
	#$(COVIMERAGE) run --source after  --source syntax --source autoload --source colors --source config --source ftplugin $(VIM_BIN) -Nu test/vimrc $(VIM_Es) -c 'Vader! test/**'

build/covimerage:
	virtualenv $@
build/covimerage/bin/covimerage: | build/covimerage
	build/covimerage/bin/pip install covimerage

build/vader:
	git clone --depth 1 https://github.com/junegunn/vader.vim.git $@

build:
	mkdir -p $@

clean:
	$(RM) -r build

SpaceVim.d/init.toml: $(HOME)/.SpaceVim.d/init.toml
	cp $(HOME)/.SpaceVim.d/init.toml SpaceVim.d/init.toml

.PHONY: prepare_push
prepare_push: SpaceVim.d/init.toml

.PHONY: install
install: 
	mkdir -p $(HOME)/.SpaceVim.d/
	cp SpaceVim.d/init.toml $(HOME)/.SpaceVim.d/init.toml

.PHONY: clean test
