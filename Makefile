ACTIONS = alacritty neovim zsh powerline rectangle fzf oh-my-zsh
BREWPREFIX := $$(echo $$(brew --prefix))

.PHONY: build $(ACTIONS)

build: $(ACTIONS)

alacritty:
	brew reinstall --force --cask alacritty
	mkdir -p ~/.config/alacritty
	cp alacritty.yml ~/.config/alacritty/alacritty.yml

neovim:
	brew reinstall neovim
	mkdir -p ~/.config/nvim
	cp -R -f nvim ~/.config/nvim
	cp .vimrc ~/.vimrc

zsh:
	brew reinstall zsh
	chsh -s /bin/zsh
	cp .zshrc ~/.zshrc

oh-my-zsh: zsh
	sh -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

powerline:
	git clone https://github.com/powerline/fonts.git --depth=1
	./fonts/install.sh
	rm -rf fonts

rectangle:
	brew reinstall --force --cask rectangle

fzf:
	brew reinstall fzf
	$(BREWPREFIX)/opt/fzf/install
