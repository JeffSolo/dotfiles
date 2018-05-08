/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap buo/cask-upgrade
brew tap homebrew/bundle
brew bundle --file=~/MacSetup/packages/Brewfile

sudo defaults write com.apple.finder AppleShowAllFiles -bool true
sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist DontPageAudioDevices 1

cp -Riv ~/MacSetup/dotfiles/.[^.]* ~

apm install --packages-file ~/MacSetup/packages/atom-package-list.txt
conda env create -f conda.yml

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
chsh -s /bin/zsh
