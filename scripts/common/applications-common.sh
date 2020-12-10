# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew install vim
brew install flycut
brew install shiftit
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
echo
brew install --cask dash
brew install postman
brew install quicklook-json
brew install kryptco/tap/kr

# Terminals

brew install iterm2

# Browsers

brew install google-chrome
brew install firefox

# Communication

brew install slack

# Text Editors

brew install macdown
brew install --cask macvim
brew install jetbrains-toolbox --force # guard against pre-installed jetbrains-toolbox
brew install visual-studio-code

set -e
