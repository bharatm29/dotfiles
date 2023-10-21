# Dotfiles
##### Latest tested on Debian bookworm and trixie.
---

Installing required packages and other stuffs:

[Nerd fonts](https://www.nerdfonts.com/font-downloads)

Install the following packages
```
sudo nala install curl polybar rofi zsh tmux feh vim exa neofetch fzf git brightnessctl flameshot picom bat ripgrep fd-find fonts-font-awesome acpi arandr
```

Careful when installing `sddm`

installing nix package manager
```
sh <(curl -L https://nixos.org/nix/install) --daemon
```

Also if nix is not available system wide after installing the deamon, [ here is the fix ](https://stackoverflow.com/questions/54087291/nix-env-and-nix-build-not-found-after-installation-debian-buster).

Install themes and icons separately by copying them into .icons and .themes.

[Quick fonts setup](https://github.com/adi1090x/polybar-themes)

[Libinput-gestures for touchpad gestures](https://github.com/bulletmark/libinput-gestures)

[Alacritty building from source](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

[ For adding natural scrolling ](https://askubuntu.com/questions/1122513/how-to-add-natural-inverted-mouse-scrolling-in-i3-window-manager)

Just few commands that I seem to forget overnight:
```
xinput --list | xinput --list-props <id>
xev
showkey -[k|a]
rg -> ripgrep
fc-cache -v
fc-list
```

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
Also configure zsh-syntax-highlighting catppuccin theme

```
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
cd zsh-syntax-highlighting/themes/
cp -v catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
```


Finally copy the `.config/.zshrc` to `~/.zshrc` and `source .zshrc`.

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

and if i3 is not in the session, copy the i3.desktop to /usr/share/xsessions/

---
### Setting up neovim
[Installing through App image](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package)

Then setup [Lazyvim](https://www.lazyvim.org/) or 

```
apt install lazygit ripgrep fd-find
```


then simply copy-pasta the nvim-lazy to $USER/.config/nvim

### Setting the background

In the `crontab -e`:
```
*/5 * * * * /USR/BIN/sh /usr/local/bin/bgw.sh
```
