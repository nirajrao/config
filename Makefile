ACTIONS = alacritty neovim zsh powerline

.PHONY: build $(ACTIONS)

build: alacritty neovim zsh powerline

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
	cd fonts
	./install.sh
	cd ..
	rm -rf fonts
