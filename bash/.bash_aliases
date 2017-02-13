#}-------------------
# Personnal Aliases
#-------------------
alias zshh='/home/eashmia/usr/zsh/zsh'
alias setz="export SHELL='/home/eashmia/usr/zsh/zsh'"
alias zz="exec /home/eashmia/usr/zsh/zsh"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which2='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -ah --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...


#-------------------------------------------------------------
# Tailoring 'less'
#-------------------------------------------------------------

alias more='less'
export PAGER=less
#export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
                ## Use this if lesspipe.sh exists.
#export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
#export LESS='-i -N -w -z-4 -g -R -P%t?f%f \
#:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


#-------------------------------------------------------------
# Spelling typos - highly personnal and keyboard-dependent :-)
#-------------------------------------------------------------

alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'
#display fix for tmux 
alias up_disp='export DISPLAY=`cat ~/.display.txt`'

##lsf stuff
alias bhos='bhosts duib_interactive_servers'
alias check_license="lmstat -a -c \!* | less"
alias check_lic="lmstat -a -c \!*"
alias check_load_interactive='bhosts duib_interactive_servers | sed "1 d" | cut -c1-12 | xargs lsload'
alias check_who_batch='bjobs -q asic_batch -u all \!* | sed "1 d" | cut -c9-16 | sort | uniq -c | sort '
alias check_health_interactive='bhosts duib_interactive_servers | sed "1 d" | cut -c1-12 > /tmp/tmp_lsf_host_list && lsgrun -f /tmp/tmp_lsf_host_list /proj/lsf/utils/lsf_linux_server_test.sh ; rm -f /tmp/tmp_lsf_host_list'


#Git
alias gitl='git log --name-only'

#clearcase
#alias ct="/usr/atria/bin/cleartool"
alias fix_rs="unset LS_COLORS"

function fix_zsh {
export PATH=/home/eashmia/usr/zsh:$PATH
}

alias s_epsee='submodules/epsee/bin/epsee'
