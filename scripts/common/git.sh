echo
echo "Installing Git and associated tools"
brew install git
brew install git-gui
brew install gitleaks
brew tap git-duet/tap
brew install git-duet
brew install sourcetree

echo
echo "Putting a sample git-pair file in ~/.pairs"
cp files/.pairs ~/.git-authors

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/local/bin/vim
git config --global transfer.fsckobjects true
mkdir -p ~/.git-template
git config --global init.templateDir ~/.git-template
echo "ref: refs/heads/main" > ~/.git-template/HEAD

echo
echo "Configure git-duet"
echo "export GIT_DUET_ROTATE_AUTHOR=1" >> ~/.zshrc
echo "export GIT_DUET_CO_AUTHORED_BY=1" >> ~/.zshrc

