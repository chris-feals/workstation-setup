echo
echo "Installing most recent version of NodeJS and node tooling"

brew install node
brew install nvm
brew install yarn
brew install yarn-completion

echo
echo "Installing global NodeJS Packages"

npm install --global yo
npm install --global webpack
npm install --global grunt-cli
npm install --global gulp-cli
