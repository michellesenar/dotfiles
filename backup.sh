#!/bin/zsh

echo "Backing up necessary files and folders"

cp ~/.CFUserTextEncoding ~/dotfiles/
cp ~/.gitconfig ~/dotfiles/
cp ~/.npmrc ~/dotfiles/
cp ~/.pgpass_example ~/dotfiles/
cp ~/.vimrc ~/dotfiles/
cp ~/.yarnrc ~/dotfiles/
cp ~/.zshrc ~/dotfiles/
cp ~/.work_aliases ~/dotfiles/for_work_only
cp -R ~/.config ~/dotfiles/
cp -R ~/.kube ~/dotfiles/
cp -R ~/.nvm ~/dotfiles/
cp -R ~/.oh-my-zsh ~/dotfiles/
cp ~/.ssh/config ~/dotfiles/.ssh
cp ~/.ssh/known_hosts ~/dotfiles/.ssh
cp -R ~/.vim ~/dotfiles/
cp -R ~/.zsh ~/dotfiles/

echo "Done"

