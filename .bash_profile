[[ ":$PATH:" != *":/usr/cisco/bin:"* ]] && PATH="/usr/cisco/bin:${PATH}"
[[ ":$PATH:" != *":/router/bin:"* ]] && PATH="/router/bin:${PATH}"
#PATH=$PATH:/usr/cisco/bin
#PATH=$PATH:/router/bin

color=$(tput setaf 2)
reset=$(tput sgr0)
export PS1='\[$color\]ads\w\$\[$reset\] '

# Bash settings
alias h='history | grep -i $1'
alias +='pushd .'
alias p='popd'
alias rm='rm -I'
alias la='ls -lah -sort'
alias ld='ls -lah | grep ^d'
alias ltr='ls -Altrh'
alias lt='ls -Alth'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
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
alias ads='ssh bgl-ads-3511'
alias path='echo -e ${PATH//:/\\n}'
alias f='find . -name $1'
alias eb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'
alias tscp='scp $1 $2:$3/.'

# Frequent paths
export COREDUMP='/nobackup/tsheoran/dev/core_dump/'
export TDEVP='/nobackup/tsheoran/dev/'
export TFTPP='tftp://202.153.144.25/auto/tftp-blr-users4/tsheoran/'
export TFTPRP='/auto/tftp-rtp-viking/release/'
export ITFTP='tftp://202.153.144.25/auto/tftp-blr-users4/tsheoran/asr9k-mini-x64.iso'
export INAME='asr9k-mini-x64.iso'
export TBUILDC='jam -l -d0 -j64 asr9k-mini-x64.iso'
export TPULLC='acme nw -lineup xr-dev.lu -plat asr9k-px'
alias teju='cd ~/teju/; ls '
alias tdev='cd /nobackup/tsheoran/dev/; ls'
alias tbash='cd ~/teju/bash/; ls'
alias tftp='cd /auto/tftp-blr-users4/tsheoran/; ls'
alias tftpr='cd /auto/tftp-rtp-viking/release/; ls'
alias tbuild='sh ~/teju/bash/build_n_load_tftp_asr9k_prod.sh $1'
alias tpull='sh ~/teju/bash/pull_new_asr9k.sh $1 $2'
alias tpnb='sh ~/teju/bash/pull_n_build_asr9k.sh $1 $2'
alias tcpr='sh ~/teju/bash/release_to_tftp.sh'
alias tcp='sh ~/teju/bash/copy_to_tftp.sh $1'
alias tacme='sh ~/teju/bash/acme_cmds.sh'


