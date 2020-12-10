echo "Configuring Oh My Zsh"
echo "Check it out at https://github.com/ohmyzsh/ohmyzsh"

/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Adding a set of default plugins to the .zshrc"
echo "Plugins to be added: bundler, common-aliases, git, gitfast, nvm, rails, yarn"

cat > /tmp/here_plugins <<HEREDOC
plugins=(
  bundler
  common-aliases
  docker-compose
  docker-machine
  docker
  dotenv
  git
  gitfast
  nvm
  rails
  yarn
)
HEREDOC

sed -i .bak '/plugins=(git)/ {
r /tmp/here_plugins
d
}' ~/.zshrc
rm /tmp/here_plugins
