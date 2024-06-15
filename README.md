## My dotfiles for fresh macOS install
These are primarily written from the perspective of setting up a new work laptop and limited to bare essentials I require on it. Feel free to fork and create your own!

### Install
```bash
git clone https://github.com/arshxyz/dotfiles && cd dotfiles && zsh setup.zsh 
```
This will install brew, nvm, the packages/casks mentioned in the Brewfile and copy .zshrc to `$HOME` with aliases and functions

#### Setup macOS settings
```bash
zsh .macos
```

#### Browser stuff
```bash
zsh .browser
```
This just opens a bunch of windows to install extensions and userscripts I use since I couldn't find a way to programatically install these without doing something super hacky. If you know of a better way, let me know!
