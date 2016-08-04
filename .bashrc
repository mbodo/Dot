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
alias ds='du -sch' # Display summarized size of directory in (e.g kB, M, G)
alias tarc='tar cvf' # Creating an uncompressed tar archive using option (e.g tar cvf archive_name.tar dirname/)
alias tarcz='tar cvzf' # Creating a tar gzipped archive using option cvzf (e.g tar cvzf archive_name.tar.gz)
alias tarx='tar xvf' # Extract a tar file using option x (e.g tar xvf archive_name.tar)
alias tarxz='tar xvfz' # Extract a gzipped tar archive ( *.tar.gz ) (e.g  tar xvfz archive_name.tar.gz)
alias tart='tar tvf' # View the tar archive file content without extracting (e.g tar tvf archive_name.tar)
alias tartz='tar tvfz' # View the *.tar.gz file content without extracting (e.g tar tvfz archive_name.tar.gz)
alias netstatp='netstat -plnt' # Display tcp ports with process PIDs without resolving a names
alias sudok='sudo -K' # Clear sudo users credentials cache

 
# Pacman alias examples
alias pacrep="pacman -Si"           # Display information about a given package in the repositories
alias pacreps="pacman -Ss"          # Search for package(s) in the repositories
alias pacloc="pacman -Qi"           # Display information about a given package in the local database
alias paclo="pacman -Qdt"           # List all packages which are orphaned
alias paclf="pacman -Ql"            # List all files installed by a given package
alias pacown="pacman -Qo"           # Show package(s) owning the specified file(s)
alias pacu="checkupdates"	    # Check pacman repository updates

PS1='[\u@\h \W]\$ '
