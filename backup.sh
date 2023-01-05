#!/bin/zsh

echo "---Backing up necessary files and folders"

cp ~/.CFUserTextEncoding ~/workspace/dotfiles/
cp ~/.gitconfig ~/workspace/dotfiles/
cp ~/.npmrc ~/workspace/dotfiles/
cp ~/.pgpass_example ~/workspace/dotfiles/
cp ~/.vimrc ~/workspace/dotfiles/
cp ~/.yarnrc ~/workspace/dotfiles/
cp ~/.zshrc ~/workspace/dotfiles/
cp -R ~/.config ~/workspace/dotfiles/
cp -R ~/.nvm ~/workspace/dotfiles/
cp -R ~/.oh-my-zsh ~/workspace/dotfiles/
cp ~/.ssh/config ~/workspace/dotfiles/.ssh
cp -R ~/.vim ~/workspace/dotfiles/
cp -R ~/.zsh ~/workspace/dotfiles/

echo "---Copying .work_aliases and .personal_alises into their own directories"
cp ~/.work_aliases ~/workspace/dotfiles/work_aliases
cp ~/.personal_aliases ~/workspace/dotfiles/personal_aliases

echo "---Copying '~/.kube' directory. Make sure to remove any creds"
cp -R ~/.kube ~/workspace/dotfiles/

echo "---You should manually copy your own .ssh/known_hosts file over"

echo "---Done"

