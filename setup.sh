DIR="$(dirname $0)"
CONDA_DIR="$DIR/packages/conda/"

# install xcode command line tools
xcode-select --install

# install homebrew and packages
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
brew bundle --file=$DIR/packages/Brewfile

sudo defaults write com.apple.finder AppleShowAllFiles -bool true
sudo defaults write /Library/Preferences/com.apple.Bluetooth.plist DontPageAudioDevices 1

# Create base conda environment, plus any other .yml files and update them with the base environment
for file in "$CONDA_DIR"*;
do
    conda env create -f $file

    filename=$(basename "$file")
    envname="${filename%.yml}"
    if [ "$envname" != "base" ]
    then
        conda env update -n "$envname" --file "$CONDA_DIR/base.yml"
    fi
done

# install global node packages
npm install -g eslint
npm install -g typescript
npm install -g tslint
npm install -g react

# install VScode settings sync extension (will use  that to download all VS code settings/extensions)
code --install-extension Shan.code-settings-sync

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# copy dotfiles to home
cp -Riv $DIR/dotfiles/.[^.]* ~

# copy settings for iterm2
cp -iv $DIR/settings/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# change shell to zsh
chsh -s /bin/zsh

