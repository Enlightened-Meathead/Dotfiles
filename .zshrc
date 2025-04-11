# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.local/bin"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bureau"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory history-substring-search colored-man-pages command-not-found vi-mode sudo web-search )

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias copydir="pwd | xclip -sel clip"
alias scr="spectacle"
alias hackintosh="cd /home/stephen/VirtualMachines/macOS-Simple-KVM/ && ./basic.sh"
alias printer="system-config-printer"
alias v="nvim"
alias ls="ls --hyperlink=auto --color=auto"
alias kclip="kitten clipboard -g"
alias icat="kitten icat"
alias kdif="kitten diff"
alias hg="kitten hyperlinked_grep"
alias ccal="calcurse"
alias red="redshift -O 2000"
alias redx="redshift -x"
alias kwinswitch="systemctl --user disable plasma-i3-custom-wm.service && systemctl --user unmask plasma-kwin_x11.service"
alias i3switch="systemctl --user enable plasma-i3-custom-wm.service && systemctl --user mask plasma-kwin_x11.service"
alias backupcfg="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias notes="cd StephensVault/; v StephensVaultIndex.md"
alias ksesh="kitty-sesh"
alias condanav="cd /home/stephen/anaconda3/bin/ && ./anaconda-navigator"
alias exitsesh="sudo systemctl restart sddm.service"
alias r1="ollama run deepseek-r1:7b"
alias llama="ollama run dolphin-llama3:8b"
alias mixtral="ollama run dolphin-mixtral"
alias ctdocx='zsh -c "pandoc \$1 -o \${1:r}.docx" --'
alias ctpdf='zsh -c "libreoffice --headless --convert-to pdf \$1 --outdir ." --'
alias mkhostnotes='bash -c "mkdir \"\$1\" && touch \"\$1/Attack Methodology.md\" \"\$1/Payload Log.md\" \"\$1/Host Findings.md\"" --'
alias mkpentestdir='~/Scripts/mkpentestdir.sh'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(_AUTO_CPUFREQ_COMPLETE=zsh_source auto-cpufreq)"

# Pyenv stuff, uncomment if you want pyenv enabled
#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
autoload bashcompinit
