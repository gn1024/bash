alias lla='ls -aFhlG'
alias ll='ls -l'
alias la='ls -laH'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cat='ccat'
alias tail='multitail'

# Jump back n directories at a time
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

# This helps me edit files that my user isn't the owner of
alias edit='SUDO_EDITOR="open -FWne" sudo -e'

alias edit_hosts='edit /etc/hosts'
alias ports='sudo lsof -iTCP -sTCP:LISTEN -P'

# Get OS X Software Updates, update Homebrew itself, and upgrade installed Homebrew packages
alias update="sudo softwareupdate -i -a; brew update; brew upgrade; brew cask upgrade; ncu -g; gcloud components update"
alias updatepy="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"

# Other IP / Method
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig en0 inet | grep 'inet ' | awk ' { print $2 } '"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Speed-up Terminal load time by clearing system logs
alias clearlogs="sudo rm -rf /private/var/log/asl/*"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias clearall="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; clearlogs"

# Get bundle identifier
alias bundleid="mdls -name kMDItemCFBundleIdentifier"

# Make an app UI english
setenglish() { defaults write $(mdls -name kMDItemCFBundleIdentifier -raw "$@") AppleLanguages '("en-US")'; }
unsetenglish() { defaults delete $(mdls -name kMDItemCFBundleIdentifier -raw "$@") AppleLanguages; }

# Remove an app from quarantine
alias unquarantine='sudo xattr -rd com.apple.quarantine'
alias deepsign='sudo codesign --force --deep --sign -'

# Geotag images (geotag track directory)
alias geotag="exiftool -r -geotag" 

# System staff
alias flushdns="sudo killall -HUP mDNSResponder"
alias reboot='sudo reboot'
alias mkdir='mkdir -pv'
alias mount='mount |column -t'
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias df='df -H'
alias du='du -ch'

# Resume wget by default
alias wget='wget -c'

alias makeenv='python3 -m venv .venv'
alias actenv='source .venv/bin/activate'
alias k='kubectl'
alias brewdump='brew bundle dump --force'
