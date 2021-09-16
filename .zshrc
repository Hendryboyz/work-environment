export PATH="$PATH:/Applications/CMake.app/Contents/bin"
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '('$branch')'
  fi
}
setopt prompt_subst
# PS1="%n@%m %1~ %#" # default
PS1="%B%U%F{cyan}%n%f%u@%F{214}%m%f in %1~ %# "

alias ll="ls -al"

# git
alias gbc="git brach -c"
alias gl="git log --oneline"
alias gc="git commit -m"
alias gp="git pull --rebase"
alias gb="git branch"

# AILabs
alias port-forward-asr="kubectl -n group-asr port-forward svc/transkribera-dev-be-asr-stream-proxy 7001"
