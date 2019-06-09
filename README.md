# Initial Mac setup

`git clone https://github.com/JeffSolo/dotfiles.git ~/MacSetup`

`source ~/MacSetup/setup.sh`

## Installs:
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

* brews:
  * bash-completion
  * [cask](https://caskroom.github.io)
  * [docker](https://www.docker.com)
  * [git](https://git-scm.com)
  * [node](https://nodejs.org/)
  * [postgresql](https://www.postgresql.org/)
  * [the-silver-searcher](https://github.com/ggreer/the_silver_searcher)
  * zsh-completions
  * zsh-syntax-highlighting

* brew casks:
  * [dropbox](https://www.dropbox.com)
  * [firefox](https://www.mozilla.org/en-US/firefox/new/)
  * [github-desktop](https://desktop.github.com)
  * [google-chrome](https://www.google.com/chrome/index.html)
  * [google-drive](https://www.google.com/drive/)
  * [iterm2](https://www.iterm2.com)
  * [java](https://www.java.com/en/)
  * [karabiner-elements](https://github.com/tekezo/Karabiner-Elements)
  * [kitematic](https://kitematic.com)
  * [mactex-no-gui](https://www.tug.org/mactex/)
  * [marshallofsound-google-play-music-desktop-player](https://www.googleplaymusicdesktopplayer.com)
  * [miniconda](https://conda.io/miniconda.html)
  * [sequel-pro](https://sequelpro.com/)
  * [slack](https://slack.com)
  * [slate](https://github.com/jigish/slate)
  * [steam](https://store.steampowered.com/)
  * [visual-studio-code](https://code.visualstudio.com/)

* miniconda with preset environments
  * `base` environment
    * [jupyter](http://jupyter.org)
    * [matplotlib](https://matplotlib.org)
    * [mypy](http://mypy-lang.org/)
    * [numpy](http://www.numpy.org)
    * [pandas](https://pandas.pydata.org/)
    * [pip](https://pypi.org/project/pip/)
    * [pylama](https://www.pylint.org)
    * [pytest](https://docs.pytest.org/latest/)
    * [pyyaml](https://pyyaml.org/)
    * [scipy](https://www.scipy.org)
  * `web` environment
    * `base` environment packages, plus:
    * [django](https://www.djangoproject.com/)
    * [django-crispy-forms](https://django-crispy-forms.readthedocs.io/en/latest/)
    * [djangorestframework](https://www.django-rest-framework.org/)
    * [flask](http://flask.pocoo.org/)
    * [jinja2](http://jinja.pocoo.org/)
    * [psycopg2](http://initd.org/psycopg/)
    * [pymysql](https://pymysql.readthedocs.io/en/latest/)
  * `datascience` environment
    * `base` environment packages, plus:
    * [biopython](https://biopython.org/)
    * [scikit-learn](https://scikit-learn.org/stable/index.html)
    * [statsmodels](http://www.statsmodels.org/stable/index.html)
    * [sympy](https://www.sympy.org/en/index.html)
    * [seaborn](https://seaborn.pydata.org/)
    * [psycopg2](http://initd.org/psycopg/)
    * [pymysql](https://pymysql.readthedocs.io/en/latest/)

* node
  * ESlint
  * React
  * Typescript
  * TSlint

* [ruby bundler](http://bundler.io)

# Misc configs:
* Set zsh to default shell
* Set Finder to show all files
* Turns off bluetooth auto-page device
* Copies iTerm2 settings

# Git Aliases
*Most aliases taken from [Phil Haack](https://haacked.com/archive/2014/07/28/github-flow-aliases/)*
* **tags**: List all tags `git tag -l`
* **branches**: *List all branches* `git branch -a`
* **remotes**: *List all remotes* `git remote -v`
* **hist**: *Show pretty log* `git log --graph --pretty=format:'%Cred%h%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)%Creset [%an]' --abbrev-commit --date=relative`
* **co**: *Checkout* `git checkout`
* **cob**: *Checkout New Branch* `git checkout -b`
* **cfg**: *Global Config* `git config --global -e`
* **save**: *Stash Current work* `git stash`
* **load**: *Load last save* `git !git stash pop --index $@`
* **saves**: *List all saves* `git stash list`
* **cm**: *Commit* `git commit -m`
* **amend**: *Amend*`git commit -a --amend`
* **po**: *Push to origin* `!git push -u origin $(git describe --contains --all HEAD)`

# Karabiner Elements Configuration
* Fine tune volume controls
* Double CMD-Q to quit
* Swap `()` and `<>`

* `CAPS LOCK`-> `HYPER` (`CMD-CTRL-OPT-SHIFT`), Escape if pressed alone
* `Right CMD` -> `Left CTRL`
* `Right OPT` -> `CAPS LOCK`
* `SHIFT-SPACE` -> `Underscore`
* `F3` -> `Home`
* `F4` -> `End`

# Slate Configuration
*Mostly stolen/modified from my [brother's config](https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/#managing-windows-with-slate)*

*Works best with the Karabiner Config specified above*

### Window Size and Position Operations
* `HYPER-O` : *Throw window to previous screen*
* `HYPER-P` : *Throw window to next screen*
* `HYPER-I` : *Maximize window on screen*
* `HYPER-K` : *Window to top half of screen*
* `HYPER-J` : *Window to bottom half of screen*
* `HYPER-H` : *Window to left half of screen*
* `HYPER-L` : *Window to right half of screen*
* `HYPER-Y` : *Window to top left corner of screen*
* `HYPER-U` : *Window to top right corner of screen*
* `HYPER-N` : *Window to bottom left corner of screen*
* `HYPER-M` : *Window to bottom right corner of screen*

### Focus Application Operations
* `HYPER-Spacebar` : *Focus terminal*
* `HYPER-D` : *Focus web browser* (Firefox)
* `HYPER-S` : *Focus editor* (Visual Studio Code)
* `HYPER-W` : *Focus music player* (Google Play Music Desktop Player)
* `HYPER-Q` : *Focus Messages*
* `HYPER-A` : *Focus pdf viewer* (Safari)
* `HYPER-Z` : *Focus WhatsApp*
* `HYPER-X` : *Focus Telegram*
* `HYPER-E` : *Focus email client* (Kiwi for Gmail)
* `HYPER-R` : *Focus Github Desktop*
* `HYPER-F` : *Focus Finder*

# Better Touch Tool Configuration
  *Must manually import [config](./Settings/Default.bttpreset) into BetterTouchTool*

### Window Manipulation
*Requires Slate config to work*

* 3 Finger Swipe Left: *Throw to next screen* `HYPER-P`
* 3 Finger Swipe Right: *Throw to previous screen* `HYPER-O`
* 3 Finger Double Tap: *Maximize window on screen* `HYPER-I`
* TipSwipe Left Finger Up (2 Finger Fix): *Window to top half of screen* `HYPER-K`
* TipSwipe Left Finger Down (2 Finger Fix): *Window to bottom half of screen* `HYPER-J`
* TipSwipe Left Finger Left (2 Finger Fix): *Window to left half of screen*
* TipSwipe Left Finger Right (2 Finger Fix): *Window to right half of screen* `HYPER-L`

### Common Operations
* TipTap Left (2 Fingers Fix): *Copy* `CTRL-C`
* TipTap Middle (2 Fingers Fix): *Cut* `CTRL-X`
* TipTap Right (2 Fingers Fix): *Paste* `CTRL-V`
* 2 Finger Click, Left Harder: *Undo* `CTRL-Z`
* 2 Finger Click, Right Harder: *Redo* `CTRL-SHIFT-Z`
* 5 Finger Swipe Up: *Volume Up* by small steps, hold
* 5 Finger Swipe Down: *Volume Down* by small step, hold
* 2 Finger Swipe from Outside Left: *Screenshot Editor*
* 4 Finger Force Click: *Quit App*

# Typical Tab Interactions
### Works in most browsers
* 3 Finger Clickswipe Up: *Close Tab* `CMD-SHIFT-T`
* 3 Finger Clickswipe Down: *Reopen Closed Tab* `CMD-T`
* 3 Finger Force Click: *New* `CMD-N`
* 3 Finger Clickswipe Right: *Move to Previous Tab* `OPT-CMD-LEFT_ARROW`
* 3 Finger Clickswipe Left: *Next Tab* `OPT-CMD-RIGHT_ARROW`
* 3 Finger Click: *Open Link in New Tab* `CMD-Click`
* Spread with Thumb and 2 Finger: *Refresh* `CMD-R`
