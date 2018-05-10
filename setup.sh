DIR="$(dirname $0)"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
brew bundle --file=$DIR/packages/Brewfile

sudo defaults write com.apple.finder AppleShowAllFiles -bool true
sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist DontPageAudioDevices 1

apm install --packages-file $DIR/packages/atom-package-list.txt
conda env create -f $DIR/packages/conda.yml

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp -Riv $DIR/dotfiles/.[^.]* ~
cp -iv $DIR/settings/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
chsh -s /bin/zsh
