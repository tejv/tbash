# In ~/.bashrc make sure to source ~/.bash_profile which is a symlink 
# to this file -> ~/tbash/.bash_profile
# Any local settings can be placed  in ~/.bash_profile.local

# Source local file if it exists
localfile=~/.bash_profile.local
if [ -f $localfile ]; then
    echo "Sourcing local bash profile"
    source ~/.bash_profile.local
else
    echo "No local bash profile found"
fi

export VISUAL=vim
export EDITOR="$VISUAL"

export PS1="\e[0;33m[\u@\h \w]\$ \e[m "

# Bash settings
alias h='history | grep -i $1'
alias +='pushd .'
alias p='popd'
alias la='ls -lah -sort'
alias ld='ls -lah | grep ^d'
alias ltr='ls -Altrh'
alias lt='ls -Alth'
alias ..='cd ..; ls'
alias ...='cd ../../; ls'
alias ....='cd ../../../; ls'
alias .4='cd ../../../../; ls'
alias .5='cd ../../../../../; ls'
alias tc='tar -zcvf'
alias te='tar -xvf'
alias q='exit'
alias x='clear'
alias cleanspace='rm -rf /tmp/*'
alias psg='ps aux | grep -i $1'
alias cs='cscope -R'
alias ct='ctags -R'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m $1'
alias gac='git add . ; git commit -m $1'
alias gpull='git pull origin master'
alias gpush='git push origin master'
# TODO Make settings for frequent paths

#Typos
alias v='vim'
alias vmi='vim'
alias vp='vim $( fc -s )'

alias pdw='pwd'
alias path='echo -e ${PATH//:/\\n}'
alias f='find . -name $1'
alias g='grep -Ri'
alias cgrep='grep -Ri --include=*.{cpp,c,h,s}'
alias d2u='find ./ -type f -exec dos2unix {} \;'
alias eb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias ur='sh ~/tbash/updt_repos.sh'
alias texec='sh ~/tbash/texec.sh $1'

alias sp='sh ~/tbash/save_path.sh'
alias rp='sh ~/tbash/retrieve_path.sh'
alias fp='sh ~/tbash/find_path.sh | grep'
alias gp='cd $( fc -s ) ; ls '



