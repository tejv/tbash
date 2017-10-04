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
alias tc='tar zcvf'
alias te='tar xvf'
alias q='exit'
alias x='clear'
alias psg='ps aux | grep -i $1'

#Typos
alias vi='vim'
alias vmi='vim'
alias v='vim'

alias pdw='pwd'
alias path='echo -e ${PATH//:/\\n}'
alias f='find . -name $1'
alias eb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias ur='sh ~/tbash/updt_repos.sh'
alias texec='sh ~/tbash/texec.sh $1'



