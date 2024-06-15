#!/bin/sh

echo "Setting up your Mac..."

# Install Oh My Zsh
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"

# Install Homebrew
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Check for node and install if we don't have it using nvm (Node Version Manager)
if test ! $(which node); then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  nvm install 20
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile



rsync --exclude ".git/" \
      --exclude ".DS_Store" \
      --exclude "setup.sh" \
      --exclude "./.macos"\
      --exclude "./.browser"\
      --exclude "README.md" \
      -avh --no-perms . ~;

source ~/.zshrc;
