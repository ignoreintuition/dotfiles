# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
zmodload zsh/zprof
# Path to your oh-my-zsh installation.
export ZSH="/Users/briangreig/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="cobalt2"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
colored-man-pages
command-not-found
common-aliases
dotenv
fancy-ctrl-z
git
git-prompt
gitfast
gitignore
github
gnu-utils
iterm2
macos
npm
node
python
screen
sudo
web-search
yarn
zsh-interactive-cd
zsh-navigation-tools
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# For brew
export PATH=/usr/local/bin:$PATH
export PATH=~/.cargo/bin:$PATH

# For docker
export PATH=$HOME/.docker/bin:$PATH

# Ruby exports

export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# NVM Stuff
\. "$HOME/.nvm/nvm.sh"
export NVM_DIR="$HOME/.nvm"

# For Pyhon
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH="/Users/briangreig/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH=~/bin:$PATH

# For XAMPP
export XAMPP_HOME=/Applications/XAMPP
alias php="$XAMPP_HOME/bin/php" 

alias python=python3
alias pip=pip3

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# azlias ohmyzsh="mate ~/.oh-my-zsh"
# 

PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Alias
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='eza -AlGHf'                      # Preferred 'ls' implementationalias cd..="cd .."
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='eza -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# Start Local MongoDB Host
alias mongostart="brew services start mongodb-community@8.0"
alias mongostop="brew services stop mongodb-community@8.0"

# Tree Command
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
export JAVA_HOME=$(/usr/libexec/java_home)

# Weather
alias weather="curl wttr.in"

# kill all USB
alias kusb="sudo killall -STOP -c usbd"

# command history
alias hh="history | grep"

# Generate sha1 digest
alias sha1='openssl sha1'

# Start calculator with math support
alias bc='bc -l'

# Colorize diff output
alias diff='colordiff'

# History
alias h='history'

# Jobs
alias j='jobs -l'

# VIM
alias vi='nvim'
alias vim='nvim'

# Taskwarrior
alias tasks='taskwarrior-tui'

# iCalBuddy
alias today='icalBuddy -f -sd eventsToday'

# iMessage
alias tell_zona='osascript ~/scripts/sendMessage.applescript 9174957925'

# Bluetooth Utility
alias bt_off='blueutil -p 0'
alias bt_on='blueutil -p 1'

# Commands
alias commands='glow ~/commands.md'

# McFly - fly through your shell history
eval "$(mcfly init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/briangreig/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/briangreig/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/briangreig/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/briangreig/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

nvm use default --silent


# Load Angular CLI autocompletion.
source <(ng completion script)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
export PATH="/opt/homebrew/opt/mysql/bin:$PATH"
