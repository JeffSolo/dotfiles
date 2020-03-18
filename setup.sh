DIR="$(dirname $0)"
CONDA_DIR="$DIR/packages/conda/"
PREF_DIR="$DIR/settings/preferences/"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     SYSTEM_TYPE="Linux";;
    Darwin*)    SYSTEM_TYPE="Mac";;
    *)          SYSTEM_TYPE="OTHER";;
esac

if [[ ${SYSTEM_TYPE} == "Mac" ]]
then
    # install xcode command line tools
    xcode-select --install

    # install homebrew and packages
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew tap homebrew/bundle
    brew bundle --file=$DIR/packages/Brewfile
fi

# Create conda environments
for file in "$CONDA_DIR"*;
do
    conda env create -f $file
done

# install global node packages
npm install -g eslint
npm install -g typescript
npm install -g tslint
npm install -g react

# install ruby bundler (for jekyll)
gem install --user-install bundler
bundle install

# install VScode settings sync extension (will use  that to download all VS code settings/extensions)
code --install-extension shan.code-settings-sync

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# copy dotfiles to home
cp -Riv $DIR/dotfiles/.[^.]* ~

# copy Library/Preferences, includes trackpad and iterm2 settings
for file in "$PREF_DIR"*;
do
    filename=$(basename "$file")
    cp -v "$file" "~/Library/Preferences/"
done

# change shell to zsh
chsh -s /bin/zsh
