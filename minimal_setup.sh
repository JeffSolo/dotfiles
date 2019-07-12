DIR="$(dirname $0)"
CONDA_DIR="$DIR/packages/conda/"
PREF_DIR="$DIR/settings/preferences/"
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     SYSTEM_TYPE="Linux";;
    Darwin*)    SYSTEM_TYPE="Mac";;
    *)          SYSTEM_TYPE="OTHER";;
esac

# install xcode command line tools on Mac
if [[ ${SYSTEM_TYPE} == "Mac" ]]
then
    xcode-select --install
fi

# install homebrew on mac
if [[ ${SYSTEM_TYPE} == "Mac" ]]
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
mkdir ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# copy profile
cp -Riv $DIR/Settings/.profile ~

# TODO, don't copy all
# copy dotfiles to home
cp -Riv $DIR/dotfiles/.[^.]* ~
