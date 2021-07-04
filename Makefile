ACTIONS = alacritty neovim zsh powerline rectangle fzf
BREWPREFIX := $$(echo $$(brew --prefix))

.PHONY: build $(ACTIONS)

build: $(ACTIONS)

alacritty:
	brew reinstall --force --cask alacritty
	mkdir -p ~/.config/alacritty
	cp -f alacritty.yml ~/.config/alacritty/alacritty.yml

neovim:
	brew reinstall neovim
	mkdir -p ~/.config/nvim
	cp -R -f nvim ~/.config/nvim
	cp -f .vimrc ~/.vimrc

zsh:
	brew reinstall zsh
	chsh -s /bin/zsh
	cp -f .zshrc ~/.zshrc

powerline:
	git clone https://github.com/powerline/fonts.git --depth=1
	./fonts/install.sh
	rm -rf fonts

rectangle:
	brew reinstall --force --cask rectangle

fzf:
	brew reinstall fzf
	$(BREWPREFIX)/opt/fzf/install
