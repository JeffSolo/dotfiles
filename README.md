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
    * [pylama](https://github.com/klen/pylama)
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

| Old Key| New Key|
|-|-|
|`(`|`<`|
|`)`|`>`|
| `CAPS LOCK` | `HYPER-ANY_KEY` |
| `CAPS LOCK` | `ESC`, |
| `Right CMD` | `Left CTRL` |
| `Right OPT` | `CAPS LOCK` |
| `SHIFT-SPACE` | `Underscore` |
| `Launchpad` (`FN-F3`) | `Home` |
| `Dashboard` (`FN-F4`) | `End` |

# Slate Configuration
*Mostly stolen/modified from my [brother's config](https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/#managing-windows-with-slate)*

*Works best with the Karabiner Config specified above*

### Window Size and Position Operations
| Throw Window to | Triggered Hotkey* |
|-|-|
| Previous screen | `HYPER-O` |
| Next screen | `HYPER-P` |

| Move and resize window | Triggered Hotkey* |
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
| Focus Application | Triggered Hotkey* |
|-|-|
| Terminal | `HYPER-Spacebar` |
| Firefox | `HYPER-D` |
| Visual Studio Code | `HYPER-S` |
| Google Play Music | `HYPER-W` |
| Messages | `HYPER-Q` |
| Safari | `HYPER-A` |
| WhatsApp| `HYPER-Z` |
| Telegram| `HYPER-X` |
| Kiwi for Gmail | `HYPER-E` |
| Github Desktop | `HYPER-R` |
| Finder | `HYPER-F` |

# Better Touch Tool Configuration
  *Must manually import [config](./Settings/Default.bttpreset) into BetterTouchTool*

### Window Manipulation
*\* Requires Slate to work as intended*
| Action | Gesture | Triggered Hotkey* |
|-|-|-|
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
|Copy |A TipTap Left (2 Fingers Fix) |`CTRL-C`|
|Cut | TipTap Middle (2 Fingers Fix) |`CTRL-X`|
|Paste | TipTap Right (2 Fingers Fix) | `CTRL-V`|
|Undo | 2 Finger Click, Left Harder  |`CTRL-Z`|
|Redo | 2 Finger Click, Right Harder  |`CTRL-SHIFT-Z` |
|Volume Up | 5 Finger Swipe Up, hold | |
|Volume Down | 5 Finger Swipe Down, hold | |
|Screenshot Editor | 2 Finger Swipe from Outside Left | |
|Quit App | 4 Finger Force Click | |

# Typical Tab Interactions
*Works in most browsers*
| Action | Gesture | Triggered Hotkey |
|-|-|-|
| New Window| 3 Finger Force Click | `CMD-N` |
| New Tab | 3 Finger Click | `CMD-T` |
| Close Tab | 3 Finger Clickswipe Up | `CMD-W` |
| Reopen Closed Tab | 3 Finger Clickswipe Down | `CMD-SHIFT-T` |
| Move to Previous Tab | 3 Finger Clickswipe Right | `OPT-CMD-LEFT_ARROW` |
| Move to Next Tab | 3 Finger Clickswipe Left | `OPT-CMD-RIGHT_ARROW` |
| Open Link in New Tab | 3 Finger Click | `CMD-Click` |
| Refresh| Spread with Thumb and 2 Finger | `CMD-R` |
