echo
echo "Installing Ruby tools and latest Ruby"
cp files/.irbrc ~/.irbrc
brew install rbenv
eval "$(rbenv init -)"
rbenv install $(rbenv install -l | grep -v - | tail -1) --skip-existing
rbenv global $(rbenv install -l | grep -v - | tail -1)
rbenv rehash
gem install bundler

# guard against pre-installed rubymine
brew install rubymine --force

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=rubymine
popd
