# Initial Mac setup

Assuming a fresh Mac install, we can't just use `git clone` without installing Xcode.  
Manually download, navigate to the repo, and run `bash setup.sh`
Mac will nag you a couple times to install Xcode - it's not required (Xcode command line tools will be installed during setup).


## Installs:
* Xcode command line tools
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

* brews:
  * bash-completion
  * [cask](https://caskroom.github.io)
  * [docker](https://www.docker.com)
  * [docker-compose](https://docs.docker.com/compose/)
  * [git](https://git-scm.com)
  * [node](https://nodejs.org/)
  * [postgresql](https://www.postgresql.org/)
  * [ruby](https://www.ruby-lang.org/en/)
  * [the-silver-searcher](https://github.com/ggreer/the_silver_searcher)
  * zsh-completions
  * zsh-syntax-highlighting

* brew casks:
  * [adobe-acrobat-reader](https://get.adobe.com/reader/)
  * [anki](https://apps.ankiweb.net/)
  * [bettertouchtool](https://folivora.ai/)
  * [dropbox](https://www.dropbox.com)
  * [firefox](https://www.mozilla.org/en-US/firefox/new/)
  * [github-desktop](https://desktop.github.com)
  * [google-chrome](https://www.google.com/chrome/index.html)
  * [hammerspoon](https://www.hammerspoon.org/)
  * [iterm2](https://www.iterm2.com)
  * [java](https://www.java.com/en/)
  * [karabiner-elements](https://github.com/tekezo/Karabiner-Elements)
  * [kitematic](https://kitematic.com)
  * [mactex-no-gui](https://www.tug.org/mactex/)
  * [minecraft](https://www.minecraft.net/en-us/)
  * [miniconda](https://conda.io/miniconda.html)
  * [scroll-reverser](https://pilotmoon.com/scrollreverser/)
  * [sequel-pro](https://sequelpro.com/)
  * [slack](https://slack.com)
  * [spotify](https://www.spotify.com/)
  * [steam](https://store.steampowered.com/)
  * [telegram](https://telegram.org/)
  * [visual-studio-code](https://code.visualstudio.com/)
  * [whatsapp](https://www.whatsapp.com/)
  * [xquartz](https://www.xquartz.org/)

* miniconda with preset environments
  * `base` environment
    * [biopython](https://biopython.org/)
    * [django](https://www.djangoproject.com/)
    * [jinja2](http://jinja.pocoo.org/)
    * [jupyter](http://jupyter.org)
    * [matplotlib](https://matplotlib.org)
    * [mypy](http://mypy-lang.org/)
    * [numpy](http://www.numpy.org)
    * [pandas](https://pandas.pydata.org/)
    * [psycopg2](http://initd.org/psycopg/)
    * [pyflakes](https://pypi.org/project/pyflakes/)
    * [pylama](https://github.com/klen/pylama)
    * [pylint](https://www.pylint.org/)
    * [pymysql](https://pymysql.readthedocs.io/en/latest/)
    * [pytest](https://docs.pytest.org/latest/)
    * [r-base](https://anaconda.org/r/r-base)
    * [scikit-learn](https://scikit-learn.org/stable/index.html)
    * [scipy](https://www.scipy.org)
    * [seaborn](https://seaborn.pydata.org/)
    * [statsmodels](http://www.statsmodels.org/stable/index.html)
    * [sympy](https://www.sympy.org/en/index.html)

* node
  * ESlint
  * React
  * Typescript
  * TSlint

* [ruby bundler](http://bundler.io)

# Misc configs:
* Set zsh to default shell
* Copies iTerm2 settings

# Git Aliases
*Most aliases taken from [Phil Haack](https://haacked.com/archive/2014/07/28/github-flow-aliases/)*

| Alias | Action | Git Command |
|-|-|-|
|**tags** | List all tags |`git tag -l`
|**branches** | List all branches |`git branch -a`
|**remotes** | List all remotes |`git remote -v`
|**hist** | Show pretty log |`git log --graph --pretty=format:'%Cred%h%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)%Creset [%an]' --abbrev-commit --date=relative`
|**co** | Checkout | `git checkout`
|**cob** | Checkout New Branch | `git checkout -b`
|**cfg** | Global Config | `git config --global -e`
|**save** | Stash Current work | `git stash`
|**load** | Load last save | `git !git stash pop --index $@`
|**saves** | List all saves | `git stash list`
|**cm** | Commit | `git commit -m`
|**amend** | Amend | `git commit -a --amend`
|**po** | Push to origin | `!git push -u origin $(git describe --contains --all HEAD)`

# Karabiner Elements Configuration
* Fine tune volume controls
* Double CMD-Q to quit
* Shift moves cursor 1 word left/right
  
| Old Key| New Key|
|-|-|
| `CAPS LOCK` | `HYPER-ANY_KEY` |
| `CAPS LOCK` | `ESC`, |
| `Right CMD` | `Left CTRL` |
| `Right OPT` | `CAPS LOCK` |

| Combo | Output |
|-|-|
| `SHIFT-SPACE` | `_` |
| `Left OPT-A`  | `Ä` |
| `Left OPT-O`  | `Ö` |
| `Left OPT-U`  | `Ü` |
| `Left OPT-4`  | `€` |

# Hammerspoon Configuration
*Mostly stolen/modified from my [brother's config](https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/#managing-windows-with-slate)*

*Works best with the Karabiner Config specified above*

### Window Size and Position Operations
| Throw Window to | Triggered Hotkey |
|-|-|
| Previous screen | `HYPER-O` |
| Next screen | `HYPER-P` |

| Move and resize window | Triggered Hotkey |
|-|-|
| Maximize on screen | `HYPER-I` |
| Top half of screen | `HYPER-K` |
| Bottom half of screen | `HYPER-J` |
| Left half of screen | `HYPER-H` |
| Right half of screen | `HYPER-L` |
| Top left corner of screen | `HYPER-Y` |
| Top right corner of screen | `HYPER-U` |
| Bottom left corner of screen | `HYPER-N` |
| Bottom right corner of screen | `HYPER-M` |

### Focus Application Operations
| Focus Application | Triggered Hotkey |
|-|-|
| iTerm | `HYPER-Spacebar` |
| Window Select | `HYPER-Q` |
| Spotify | `HYPER-W` |
| Kiwi for Gmail | `HYPER-E` |
| Microsoft OneNote | `HYPER-A` |
| Visual Studio Code | `HYPER-S` |
| Google Chrome | `HYPER-D` |
| Finder | `HYPER-F` |
| Translate | `HYPER-Z` |
| Preview | `HYPER-X` |
| Messages | `HYPER-M` |
| Calendar | `HYPER-C` |
| Clipboard History | `HYPER-;` |

# System Trackpad Gestures Configuration
*`System Preferences -> Trackpad` settings*

|Action | Gesture|
|-|-|
|Swipe Between Fullscreen Apps | Left/Right Swipe with 4 fingers|
|Mission Control | 4 finger Swipe Up |
|App Exposé| 4 Finger Swipe Up |
|Show Desktop| Spread with Thumb and 3 Fingers |
|Launchpad| Pinch with Thumb and 3 Fingers |

# Better Touch Tool Configuration
  *Must manually import [config](./Settings/Default.bttpreset) into BetterTouchTool*

### Window Manipulation
*\* Requires Slate to work as intended*

| Action | Gesture | Triggered Hotkey* |
|-|-|-|
|Toggle Fullscreen Mode| 4 Finger Double Tap ||
|Throw to next screen| 3 Finger Swipe Left |`HYPER-P`|
|Throw to previous screen| 3 Finger Swipe Right |`HYPER-O`|
|Maximize window on screen| 3 Finger Double Tap |`HYPER-I`|
|Window to top half of screen| TipSwipe Left Finger Up (2 Finger Fix) |`HYPER-K`|
|Window to bottom half of screen| TipSwipe Left Finger Down (2 Finger Fix)  |`HYPER-J`|
|Window to left half of screen| TipSwipe Left Finger Left (2 Finger Fix) |`HYPER-H`|
|Window to right half of screen| TipSwipe Left Finger Right (2 Finger Fix) |`HYPER-L`|

### Common Operations
| Action | Gesture | Triggered Hotkey |
|-|-|-|
|Undo | 2 Finger Click, Left Harder  |`CMD-Z`|
|Redo | 2 Finger Click, Right Harder  |`CMD-SHIFT-Z` |
|Volume Up | 5 Finger Swipe Up, hold | |
|Volume Down | 5 Finger Swipe Down, hold | |
|Play/Pause | 5 Finger Tap | |
|Screenshot Editor | 2 Finger Swipe from Outside Left | |
|Quit App | 4 Finger Force Click | |

# Typical Tab Interactions
*Works in most browsers*

| Action | Gesture | Triggered Hotkey |
|-|-|-|
| Open Link in New Tab | 3 Finger Tap | `CMD-Click` |
| New Window| 3 Finger Force Click | `CMD-N` |
| New Tab | 3 Finger Click | `CMD-T` |
| Close Tab | 3 Finger Clickswipe Up | `CMD-W` |
| Reopen Closed Tab | 3 Finger Clickswipe Down | `CMD-SHIFT-T` |
| Move to Previous Tab | 3 Finger Clickswipe Right | `OPT-CMD-LEFT_ARROW` |
| Move to Next Tab | 3 Finger Clickswipe Left | `OPT-CMD-RIGHT_ARROW` |
| Refresh| Spread with Thumb and 2 Finger | `CMD-R` |
