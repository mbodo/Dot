#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Exports
export PATH="${PATH}:/opt/gradle/bin"
export VAGRANT_HOME="/share/.vagrant.d"

# Common aliases
alias la='ls --color=auto -lah'
alias ll='la' #Use same as la alias
alias so='source ~/.bashrc'
alias psc='ps xawf -eo pid,user,cgroup,args'

# Pacman alias examples
alias pacrep="pacman -Si"           # Display information about a given package in the repositories
alias pacreps="pacman -Ss"          # Search for package(s) in the repositories
alias pacloc="pacman -Qi"           # Display information about a given package in the local database
alias paclo="pacman -Qdt"           # List all packages which are orphaned
alias paclf="pacman -Ql"            # List all files installed by a given package
alias pacown="pacman -Qo"           # Show package(s) owning the specified file(s)
alias pacu="checkupdates"	    # Check pacman repository updates

PS1='[\u@\h \W]\$ '
