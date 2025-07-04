#!/bin/zsh -x

set -o errexit
set -o nounset
set -o pipefail

export DOTFILES_ROOT=$(realpath "$(dirname $0)/..")

# Install fzf
brew install fzf

rm -f ~/.zshrc
ln -sf $DOTFILES_ROOT/zsh/zshrc ~/.zshrc
