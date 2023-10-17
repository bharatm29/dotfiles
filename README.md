# Dotfiles

---

Installing required packages and other stuffs:

[Nerd fonts](https://www.nerdfonts.com/font-downloads)

Install the following packages
`polybar rofi zsh tmux nala feh vim exa neofetch fzf git brightnessctl flameshot picom bat`

Install theme separately

[Libinput-gestures for touchpad gestures](https://github.com/bulletmark/libinput-gestures)

[Alacritty building from source](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

---
### Setting up zsh

First installing oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

And zsh plugins

zsh-autosuggestions

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

zsh-syntax-highlighting

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```


Setting the plugins

`plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)`

Finally copy the `.config/.zshrc` to `~/.zshrc`

---
### Setting up tmux

`sudo nala install tmux` or `nix-env -iA nix-pkgs.tmux`

Installing TPM

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

---
### Setting up i3
We need i3 version 4.22^. Check if it is present in native pkgs otherwise,
first download [i3 tar](https://i3wm.org/downloads/) and then [build from source](https://github.com/budlabs/youtube/wiki/0003---build-i3-from-source)

Copy the i3 folder to $USER/.config/i3

---
### Setting up neovim
[Installing through App image](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package)

Then setup [Lazyvim](https://www.lazyvim.org/) or 

```
apt install lazygit ripgrep fd-find
```


then simply copy-pasta the nvim-lazy to $USER/.config/nvim


