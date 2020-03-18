DIR="$(dirname $0)"
CONDA_DIR="$DIR/packages/conda/"
PREF_DIR="$DIR/settings/preferences/"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     SYSTEM_TYPE="Linux";;
    Darwin*)    SYSTEM_TYPE="Mac";;
    *)          SYSTEM_TYPE="OTHER";;
esac

# install xcode command line tools and homebrew on Mac
if [[ ${SYSTEM_TYPE} == "Mac" ]]
then
    xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# copy dotfiles to home
cp -Riv $DIR/dotfiles/.[^.]* ~
