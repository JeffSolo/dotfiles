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
  * [1password](https://1password.com/)
  * [1password-cli](https://support.1password.com/command-line-getting-started/)
  * [bettertouchtool](https://folivora.ai/)
  * [discord](https://www.discord.com)
  * [dropbox](https://www.dropbox.com)
  * [firefox](https://www.mozilla.org/en-US/firefox/new/)
  * [google-chrome](https://www.google.com/chrome/index.html)
  * [hammerspoon](https://www.hammerspoon.org/)
  * [iterm2](https://www.iterm2.com)
  * [java](https://www.java.com/en/)
  * [karabiner-elements](https://github.com/tekezo/Karabiner-Elements)
  * [mactex-no-gui](https://www.tug.org/mactex/)
  * [microsoft-edge](https://www.microsoft.com/edge)
  * [miniconda](https://conda.io/miniconda.html)
  * [nvidia-geforce-now](https://www.nvidia.com/en-us/geforce-now/games/)
  * [slack](https://slack.com)
  * [telegram](https://telegram.org/)
  * [visual-studio-code](https://code.visualstudio.com/)
  * [zoom](https://zoom.us/)

* miniconda with preset environments:
  * `base` environment:
    * [biopython](https://biopython.org/)
    * [django](https://www.djangoproject.com/)
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

* docker containers:
  * [jekyll/jekyll](https://hub.docker.com/r/jekyll/jekyll) 

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
| `CAPS LOCK` | `ESC` |
| `Right CMD` | `Left CTRL` |
| `Right OPT` | `CAPS LOCK` |
| `f3` | `Home` |
| `f4` | `End` |

| Combo | Output |
|-|-|
| `SHIFT-SPACE` | `_` (Underscore)|
| `Left OPT-A`  | `Ä` (case-sensitive)|
| `Left OPT-O`  | `Ö` (case-sensitive)|
| `Left OPT-U`  | `Ü` (case-sensitive)|
| `Left OPT-4`  | `€` |

| Mouse | Common | Output |
|-|-|-|
| `Button2` | Right Click | `Left CTRL` |
| `Button3` | Middle Click | `FN` |
| `Button4` | Back | `Left CMD` |
| `Button5` | Forward | `Left OPT` |

# Hammerspoon Configuration
*Mostly stolen/modified from my [brother's config](https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/#managing-windows-with-slate)*

*Works best with the Karabiner Config specified above*

* Spoons:
  * BingDaily
  * ClipboardTool
  * DeepLTranslate 
  * PopupTranslateSelection

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
| Focus Window | `HYPER-ARROWS` |

### Focus Application Operations
| Focus Application | Triggered Hotkey |
|-|-|
| iTerm | `HYPER-Spacebar` |
| Window Select | `HYPER-Q` |
| iTunes | `HYPER-W` |
| Kiwi for Gmail | `HYPER-E` |
| Slack | `HYPER-A` |
| Visual Studio Code | `HYPER-S` |
| Microsoft Edge | `HYPER-D` |
| Finder | `HYPER-F` |
| Translate | `HYPER-Z` |
| Preview | `HYPER-X` |
| Calendar | `HYPER-C` |
| Telegram | `HYPER-V` |
| Messages | `HYPER-B` |
| Clipboard History | `HYPER-;` |





# System Trackpad Gestures and Better Touch Tool Configuration

  *Must manually import [configs](./Settings/btt/) into BetterTouchTool*  
  *Requires Hammerspoon and Karabiner to work as intended*


### System Actions
*`System Preferences -> Trackpad`*
|Action | Gesture | Mouse
|-|-|-|
|Swipe Between Pages | Left/Right Swipe with 2 fingers| |
|Swipe Between Fullscreen Apps | Left/Right Swipe with 4 fingers | Back-ScrollLeft/Right|
|Mission Control | 4 Finger Swipe Up | Back-ScrollUp |
|App Exposé| 4 Finger Swipe Down | Back-ScrollDown |
|Launchpad| Pinch with Thumb and 3 Fingers |
|Show Desktop| Spread with Thumb and 3 Fingers |
### Window Manipulation
| Action | Gesture | Mouse | Triggered Hotkey |
|-|-|-|-|
|Throw to next screen| 3 Finger Swipe Left |Forward-Right|`HYPER-P`|
|Throw to previous screen| 3 Finger Swipe Right | Back-Right |`HYPER-O`|
|Toggle Fullscreen Mode| TipTap Left (3 Finger Fix) | Back-Middle||
|Maximize window on screen| TipTap Left (2 Finger Fix) | Forward-Middle |`HYPER-I`|
|Window to top half of screen| TipSwipe Left Finger Up (2 Finger Fix) | Forward-ScrollUp |`HYPER-K`|
|Window to bottom half of screen| TipSwipe Left Finger Down (2 Finger Fix) | Forward-ScrollDown |`HYPER-J`|
|Window to left half of screen| TipSwipe Left Finger Left (2 Finger Fix) | Forward-ScrollLeft |`HYPER-H`|
|Window to right half of screen| TipSwipe Left Finger Right (2 Finger Fix) | Forward-ScrollRight |`HYPER-L`|

### Common Operations
| Action | Gesture | Mouse | Triggered Hotkey |
|-|-|-|-|
|Zoom In| |Right-ScrollUp ||
|Zoom Out| |Right-ScrollDown ||
|Copy | | Middle-ScrollLeft | `CMD-C`|
|Paste | | Middle-ScrollRight | `CMD-V`|
|Undo | 2 Finger Click, Left Harder | Middle-Back | `CMD-Z`|
|Redo | 2 Finger Click, Right Harder | Middle-Forward | `CMD-SHIFT-Z` |
|Volume Up | 5 Finger Swipe Up, hold |Back-Forward-ScrollDown| |
|Volume Down | 5 Finger Swipe Down, hold |Back-Forward-ScrollUp| |
|Play/Pause | 5 Finger Tap |Back-Forward-Middle| |
|Previous | 5 Finger Swipe Right |Back-Forward-ScrollRight| |
|Next | 5 Finger Swipe Left |Back-Forward-ScrollLeft| |
|Screenshot Editor | 2 Finger Swipe from Outside Left | Middle-Right | |
|Quit App | 4 Finger Force Click |Back-Foward-Right-Middle| |

### Misc
| Action | Mouse |

# Typical Tab Interactions
*Works for most browsers*

| Action | Gesture | Mouse | Triggered Hotkey |
|-|-|-|-|
| Open Link in New Tab | 3 Finger Tap | Right-Middle | `CMD-Click` |
| New Window| 3 Finger Force Click || `CMD-N` |
| New Tab | 3 Finger Click | Back-Right-Middle | `CMD-T` |
| Close Tab | 3 Finger Clickswipe Up | Right-Back | `CMD-W` |
| Reopen Closed Tab | 3 Finger Clickswipe Down | Right-Forward | `CMD-SHIFT-T` |
| Move to Previous Tab | 3 Finger Clickswipe Right | Right-ScrollLeft| `OPT-CMD-LEFT_ARROW` |
| Move to Next Tab | 3 Finger Clickswipe Left | Right-ScrollRight | `OPT-CMD-RIGHT_ARROW` |
| Refresh| Spread with Thumb and 2 Finger || `CMD-R` |
