## My dotfiles for a fresh macOS install
These are primarily written from the perspective of setting up a new work laptop and limited to bare essentials I require. Feel free to fork and create your own!

### Install
```bash
git clone https://github.com/arshxyz/dotfiles && cd dotfiles && zsh setup.zsh 
```
This will install brew, nvm, the packages/casks mentioned in the Brewfile and copy .zshrc to `$HOME` with aliases and functions

#### Sensible macOS settings
```bash
zsh .macos
```


#### Browser stuff
This just opens a bunch of windows to install extensions and userscripts I use since I couldn't find a way to programatically install these without doing something super hacky. If you know of a better way, let me know!
```bash
zsh .browser
```

### Thanks 
These are mostly derived from [driesvints/dotfiles](https://github.com/driesvints/dotfiles) and [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles) 
