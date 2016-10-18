# install hombrew
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap Goles/battery
brew update
brew upgrade

# install packages
apps=(
    bash-completion2
    #bats
    battery
    coreutils
    findutils --default-names
    #cmake
    dockutil
    ffmpeg
    fasd
    #gifsicle
    #git
    gnu-sed --with -default-names
    grep --with-default-names
    hub #https://hub.github.com
    httpie
    imagemagick
    jq
    #mackup
    peco
    #gsgrep
    python
    shellcheck
    ssh-copy-id
    #svn
    tree
    vim
    wget
    #wifi-password
    tmux
    htop
    gzip
)

brew install "${apps[@]}"

# remove oudated versions 
brew cleanup